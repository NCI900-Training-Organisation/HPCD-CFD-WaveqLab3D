!> @brief domain module holds multiple blocks and interfaces, and is used by time-stepping routines

!> @todo Hari, I've never been careful about public vs private in modules, maybe you can help with that?

!> domain = set of blocks and interfaces, with fields defined at time t
!> blocks and interfaces are allocatable to allow for any number of them,
!> but initialization is specific to two blocks and one interface (which I think
!> should be the initial focus since that is sufficient to do many interesting problems),
!> but we should generalize this to an arbitrary number of blocks and interfaces
!> with an unstructured connectivity pattern (presumably then the domain_type would also
!> contain some type that would handle the block/interface layout)

module domain

  use mpi
  use common, only : wp
  use datatypes, only : domain_type, block_type, iface_type, mms_type,fault_type,moment_tensor
  use block, only : block_temp_parameters, eval_block_mms, norm_fields_block
  use slice_output, only : init_slice_output, end_slice_output
  use seismogram

  implicit none

  logical :: in_block_comm(2), in_fault_comm(2), in_hslice_comm(2), in_vslice_comm(2)

contains


  subroutine init_domain(D, infile)

    !> initialize the domain at t=0

    use block, only : init_block, block_time_step
    use iface, only : init_iface
    use fault_output, only : init_fault_output
    use mms, only : init_mms
    use interface_condition, only : init_vel_state
    use mpi3dbasic, only: is_master, rank, nprocs, new_communicator
    use mpi3d_interface

    implicit none

    type(domain_type),intent(out) :: D
    integer, intent(in) :: infile


    integer :: i, cart_size(3)
    integer :: n, ierr, cart_rank, comm_cart, coord(3), normal(3), &
               block_comms(2), fault_comms(2), hslice_comms(2), &
               vslice_comms(2), my_block_comm
    logical :: periodic(3) = (/ .false., .false., .false. /), reorder=.true.
    type(interface3d) :: II

    ! Variables for parsing the input data file
    integer :: stat
    character(256) :: name, problem,response,plastic_model,fd_type
    integer :: nt, nblocks
    logical :: output_fault_topo, w_fault, interpol, use_topography, mollify_source
    integer :: w_stride, ny, nz, order
    real(kind = wp) :: CFL, t_final, topo
    ! interface conditions
    character(64) :: coupling !< locked, slip-weakening_friction, linear_friction
    character(64) :: mesh_source, type_of_mesh, material_source !< cartesian or curvilinear

    real(kind = wp) :: dt, dtmin, dt1, dt2, spatialsetep1(3), spatialsetep2(3)
    
    real(kind = wp) :: meshvolume1, meshvolume2, totalvolume, ratio1, ratio2
    integer :: nprocs_1, nprocs_2

    type(block_temp_parameters) :: btp(2)


    ! namelists to read in parameters

    namelist /problem_list/ name, problem,response,plastic_model,nblocks, &
                            nt, CFL, coupling, fd_type, order, t_final, &
                            mesh_source, type_of_mesh,material_source, &
                            interpol, w_stride, w_fault, use_topography, topo, mollify_source

    namelist /block_list/ btp


    !---------------------------------------------------------------------------
    !                       END OF VARIABLES
    !---------------------------------------------------------------------------
    ! set default parameters and read problem list

    name = 'default'
    problem = 'TPV5'
    response = 'elastic'
    plastic_model = 'default'
    nt = 0
    CFL = 0.5_wp
    coupling = 'locked'
    t_final = 0.0_wp
    w_fault = .true.
    output_fault_topo = .true.
    mesh_source = 'compute'
    material_source = 'hardcode'
    w_stride = 1
    interpol = .false.
    use_topography = .false.
    mollify_source = .false.
    topo = 1.0_wp
    fd_type = 'traditional'
    order = 5
    

    read(infile,nml=problem_list,iostat=stat)
    if (stat>0) stop 'error reading namelist problem_list'

    D%name = name
    D%problem = problem
    D%response = response
    D%plastic_model = plastic_model
    D%coupling = coupling
    D%w_fault = w_fault
    D%output_fault_topo = output_fault_topo
    D%t_final = t_final
    D%type_of_mesh = type_of_mesh
    D%mesh_source = mesh_source
    D%material_source = material_source
    D%CFL = CFL
    D%w_stride = w_stride
    D%interpol = interpol
    D%use_topography = use_topography
    D%topo = topo
    D%mollify_source = mollify_source 
    D%fd_type = fd_type
    D%order = order




    rewind(infile)
    read(infile,nml=block_list,iostat=stat)
    if (stat>0) stop 'error reading namelist block_list'


    
       

    !> set initial time

    D%t = 0.0_wp

    ! compute global time-step
    spatialsetep1(1) = (btp(1)%bqrs(1)-btp(1)%aqrs(1))/real(btp(1)%nqrs(1)-1)
    spatialsetep1(2) = (btp(1)%bqrs(2)-btp(1)%aqrs(2))/real(btp(1)%nqrs(2)-1)
    spatialsetep1(3) = (btp(1)%bqrs(3)-btp(1)%aqrs(3))/real(btp(1)%nqrs(3)-1)
    
    spatialsetep2(1) = (btp(2)%bqrs(1)-btp(2)%aqrs(1))/real(btp(2)%nqrs(1)-1)
    spatialsetep2(2) = (btp(2)%bqrs(2)-btp(2)%aqrs(2))/real(btp(2)%nqrs(2)-1)
    spatialsetep2(3) = (btp(2)%bqrs(3)-btp(2)%aqrs(3))/real(btp(2)%nqrs(3)-1)
       
    dt1 =   block_time_step(spatialsetep1, CFL, btp(1)%rho_s_p)
    dt2 =   block_time_step(spatialsetep2, CFL, btp(2)%rho_s_p)
    
    dtmin = min(dt1, dt2)
    
    D%dt = dtmin

    if (is_master()) print *, 'warning: current method for setting time step does not use material properties'
    if (is_master()) print *, 'and mesh information from files (only scalars from btp%... in input file are used)'
    
    !> set number of blocks and interfaces
    !> (for now, just two blocks and one interface)

    D%nblocks = 2
    D%nifaces = 1

    ! compute the volume of work in each block
    meshvolume1 = real(btp(1)%nqrs(1)*btp(1)%nqrs(2)*btp(1)%nqrs(3))
    meshvolume2 = real(btp(2)%nqrs(1)*btp(2)%nqrs(2)*btp(2)%nqrs(3))

    ! compute the work ratio
    totalvolume =  meshvolume1 +  meshvolume2
    ratio1 =  meshvolume1/totalvolume
    ratio2 =  meshvolume2/totalvolume

    ! assign processes using the work ratio
    nprocs_1 =  int((nprocs + 1)*ratio1)
    nprocs_2 =  int((nprocs + 1)*ratio2)

 
    ! For now, just two blocks.
    ! Can be generalized to N blocks by dividing by N instead of 2.
    in_block_comm(1) = (rank < (nprocs + 1)/2)
    in_block_comm(2) = (rank >= nprocs/2)

    !in_block_comm(1) = (rank .le. nprocs_1)
    !in_block_comm(2) = (rank > nprocs_1)

    call new_communicator(in_block_comm(1), block_comms(1))
    call new_communicator(in_block_comm(2), block_comms(2))

    if (in_block_comm(1)) my_block_comm = block_comms(1)
    if (in_block_comm(2)) my_block_comm = block_comms(2)

    allocate(D%B(D%nblocks))
    allocate(D%I(D%nifaces))
    allocate(D%seismometers(D%nblocks))

    !> initialize blocks
    do i = 1,D%nblocks
       ny = btp(i)%nqrs(2)
       nz = btp(i)%nqrs(3)

    if((btp(i)%profile_type == 'read_from_memomry_fractal') .and. &
         (btp(i)%topography_type == 'read_topo_from_memory')) then

       ny = btp(i)%faultsize(1)
       nz = btp(i)%faultsize(2)

    end if
       
      if (.not.in_block_comm(i)) cycle
      call init_block(D%mesh_source, D%type_of_mesh, D%material_source,&
           D%response, D%fd_type,  D%order, D%interpol, D%use_topography, topo, D%B(i), &
           problem, btp(i), block_comms(i),infile,i, ny, nz)      
  
      call MPI_Comm_size(block_comms(i),n,ierr)
      cart_size = (/0,0,0/)
      call MPI_Dims_create(n,3,cart_size,ierr)      

      call MPI_Cart_create(block_comms(i),3,cart_size,periodic,reorder,comm_cart,ierr)
      call MPI_Comm_rank(comm_cart,cart_rank,ierr)
      call MPI_Cart_coords(comm_cart,cart_rank,3,coord,ierr)

      
    end do


    D%nt = floor(D%t_final/dtmin)
   
    if (is_master()) then
      write (*,*) name  
      write (*,*) "Domain time parameters :"
      write (*,*) "        Number of time steps = ", D%nt
      write (*,*) "        Initial dt = ", D%dt
      write (*,*) "        Final time = ", D%t_final
    end if

    ! Setup communicator for interface partitioning.


    if (in_block_comm(1)) then
      normal = [1, 0, 0]
      call new_interface(coord, cart_size, normal, MPI_COMM_WORLD, D%B(1)%G%C, II)
    end if
    if (in_block_comm(2).and. .not.in_block_comm(1)) then
      normal = [-1, 0, 0]
      call new_interface(coord, cart_size, normal, MPI_COMM_WORLD, D%B(2)%G%C, II)
    end if

    !> initialize interfaces

    do i = 1,D%nifaces
       !> create an interface that joins two blocks
       !> first define which blocks will be coupled: block 1 to block 2
       D%I(i)%im = 1
       D%I(i)%ip = 2
       !> and in which direction they will be coupled: q
       D%I(i)%direction = 'q'
       !> then initialize interface
       if (in_block_comm(1)) call init_iface(D%I(i),D%B(1), II)
       if (in_block_comm(2) .and. .not.in_block_comm(1)) call init_iface(D%I(i),D%B(2), II)
       if (in_block_comm(1)) call init_vel_state(D%problem, D%I(i), D%B(1), -1.0_wp, 2)
       if (in_block_comm(2) .and. .not.in_block_comm(1)) call init_vel_state(D%problem, D%I(i), D%B(2), 1.0_wp, 1)
    end do

    call exchange_materials_interface(D)

    in_fault_comm(1) = (in_block_comm(1) .and. D%I(1)%II%on_interface)
    in_fault_comm(2) = (in_block_comm(2) .and. D%I(1)%II%on_interface)
    call new_communicator(in_fault_comm(1), fault_comms(1))
    call new_communicator(in_fault_comm(2), fault_comms(2))

    !if ( D%w_fault .eqv.  .true.) then
    if (in_fault_comm(1)) call init_fault_output(D%w_fault,D%name, D%fault, D%B(1)%G%C, fault_comms(1))
    if (in_fault_comm(2) .and. .not.in_fault_comm(1)) call init_fault_output(D%w_fault,D%name, D%fault, D%B(2)%G%C, fault_comms(2))
    !end if
!     if (in_block_comm(1)) call init_slice_output(infile, D%name, D%slicer, D%B(1)%G%C)
!     if (in_block_comm(2)) call init_slice_output(infile, D%name, D%slicer, D%B(2)%G%C)

    call init_mms(infile, D%mms_vars)

    D%seismometers(1)%block_num = 1
    D%seismometers(2)%block_num = 2

    if (in_block_comm(1)) call init_seismogram(infile,D%seismometers(1),D%name, D%B(1)%G)
    if (in_block_comm(2)) call init_seismogram(infile,D%seismometers(2),D%name, D%B(2)%G)
    
    !> above assumes that blocks contain fields defined on a structured mesh,
    !> which is a cube in the computational domain; the computational coordinates
    !> are q,r,s, and there is a mapping to a curvilinear mesh in physical coordinates x,y,z
    !> I recommend that we use q,r,s in all references to directions, sides, etc., because
    !> it is possible that a boundary in q is mapped to a boundary in y or z rather than x
    !> (this will be a different naming convention than in original version of 3D code)

  end subroutine init_domain


  subroutine close_domain(D)

    use fault_output, only: destroy_fault

    type(domain_type),intent(inout) :: D

    if ( D%w_fault .eqv.  .true.) then
       if (in_fault_comm(1)) call destroy_fault(D%fault)
       if (in_fault_comm(2) .and. .not.in_fault_comm(1)) call destroy_fault(D%fault)
    end if
    !call end_slice_output(D%slicer)
    if (in_block_comm(1)) call destroy_seismogram(D%seismometers(1))
    if (in_block_comm(2)) call destroy_seismogram(D%seismometers(2))

  end subroutine close_domain

  subroutine enforce_bound_iface_conditions(D, stage)

    !> enforce boundary and interface conditions

    use block, only : enforce_bound_conditions

    implicit none

    type(domain_type),intent(inout) :: D
    integer, intent(in) :: stage

    !> enforce boundary conditions on external sides of each block
    !> enforce interface conditions to couple blocks

      if (in_block_comm(1)) then
        call enforce_bound_conditions(D%B(1), D%mms_vars, D%t)
        call enforce_iface_conditions(D%problem, D%coupling, D%I(1), &
          D%B(1),2,D%t, stage, D%mms_vars, D%fault)
      end if
      if (in_block_comm(2)) then
        call enforce_bound_conditions(D%B(2), D%mms_vars, D%t)
        call enforce_iface_conditions(D%problem, D%coupling, D%I(1), &
          D%B(2),1,D%t, stage, D%mms_vars, D%fault)
      end if

  end subroutine enforce_bound_iface_conditions

  subroutine enforce_iface_conditions(problem, coupling, I,B, ib, t, stage, mms_vars, handles)

    use datatypes, only : block_type, iface_type, mms_type, fault_type, block_boundary
    use RHS_Interior, only : Impose_Interface_Condition
    use mpi3dbasic, only : rank

    implicit none

    character(*), intent(in) :: problem, coupling
    type(iface_type),intent(inout) :: I
    type(block_type),intent(inout) :: B
    type(mms_type), intent(inout) :: mms_vars
    type(fault_type), intent(inout) :: handles
    real(kind = wp),intent(in) :: t
    integer, intent(in) :: stage, ib

    select case(I%direction)

    case('q')

!!! coupling: side 2 of block 1, B(2) <==> side 1 of block 2, Bp(1)

!!! this solves interface conditions for hat variables, constructs SAT forcing terms,
!!! and adds SAT forcing terms to rates

      if (B%boundary_vars%Rx == 0 .or. B%boundary_vars%Lx == 0) then
        call Impose_Interface_Condition(problem, coupling, I, B, ib, &
                              t, stage, mms_vars, handles)
      end if

    case('r','s')

       stop 'interfaces in r and s direction not implemented in enforce_iface_conditions'

    end select

  end subroutine enforce_iface_conditions

  subroutine exchange_fields(D)

    use block, only : exchange_fields_block

    implicit none

    type(domain_type),intent(inout) :: D
    integer :: i

    if (in_block_comm(1)) call exchange_fields_block(D%B(1))
    if (in_block_comm(2)) call exchange_fields_block(D%B(2))

  end subroutine exchange_fields

  subroutine exchange_fields_interface(D)

    use mpi3dbasic, only : nprocs
    use block, only : copy_fields_to_boundary
    use boundary, only : exchange_fields_across_interface

    implicit none
    type(domain_type),intent(inout) :: D

      if (nprocs == 1) then
        call copy_fields_to_boundary(D%B(1))
        call copy_fields_to_boundary(D%B(2))
        D%B(1)%B(2)%Fopp(:,:,:) = D%B(2)%B(1)%F(:,:,:)
        D%B(2)%B(1)%Fopp(:,:,:) = D%B(1)%B(2)%F(:,:,:)
      else
        if (in_block_comm(1)) then
          call copy_fields_to_boundary(D%B(1))
          call exchange_fields_across_interface(D%B(1)%B(2), D%B(1)%G%C, D%I(1)%II)
        end if
        if (in_block_comm(2)) then
          call copy_fields_to_boundary(D%B(2))
          call exchange_fields_across_interface(D%B(2)%B(1), D%B(2)%G%C, D%I(1)%II)
        end if
      end if

  end subroutine exchange_fields_interface

  subroutine exchange_materials_interface(D)

    use mpi3dbasic, only : nprocs
    use block, only : copy_fields_to_boundary
    use boundary, only : exchange_materials_across_interface

    implicit none
    type(domain_type),intent(inout) :: D

      if (nprocs == 1) then
        D%B(1)%B(2)%Mopp = D%B(2)%B(1)%M
        D%B(2)%B(1)%Mopp = D%B(1)%B(2)%M
      else
        if (in_block_comm(1)) then
          call exchange_materials_across_interface(D%B(1)%B(2), D%B(1)%G%C, D%I(1)%II)
        end if
        if (in_block_comm(2)) then
          call exchange_materials_across_interface(D%B(2)%B(1), D%B(2)%G%C, D%I(1)%II)
        end if
      end if

  end subroutine exchange_materials_interface

  subroutine write_output(D)

    !> @brief write fields (and, in some cases, rates) at time t
    !> note that the way it is written exposes the details of how fields are stored
    !> in blocks and on interfaces; a potentially better way is to use subroutines
    !> that retrieve certain fields and return them in an output array

    use,intrinsic :: iso_fortran_env, only : output_unit

    implicit none

    type(domain_type),intent(in) :: D

    if ( D%w_fault .eqv.  .true.) then
       call write_fault_output(D)
       !call write_slice_output(D)
       call write_hat_output(D)
    end if
    
    call write_seismogram_output(D)

  end subroutine write_output

  subroutine write_fault_output(D)

    use fault_output
    use mpi3dbasic, only : rank
    implicit none

    type(domain_type), intent(in) :: D
    integer :: mq1, mr1, ms1, pq1, pr1, ps1, mq2, mr2, ms2, pq2, pr2, ps2

    if ( D%w_fault .eqv.  .true.) then
       if (in_fault_comm(1)) then
          
          mq1 = D%B(1)%G%C%mq
          mr1 = D%B(1)%G%C%mr
          ms1 = D%B(1)%G%C%ms
          pq1 = D%B(1)%G%C%pq
          pr1 = D%B(1)%G%C%pr
          ps1 = D%B(1)%G%C%ps
          
          call write_fault(D%B(1)%F%F(pq1,mr1:pr1,ms1:ps1,:),  &
               D%I(1)%S(mr1:pr1,ms1:ps1,:), &
               D%I(1)%W(mr1:pr1,ms1:ps1,:), D%fault)
          
       end if
       if (in_fault_comm(2)) then
          
          mq2 = D%B(2)%G%C%mq
          mr2 = D%B(2)%G%C%mr
          ms2 = D%B(2)%G%C%ms
          pq2 = D%B(2)%G%C%pq
          pr2 = D%B(2)%G%C%pr
          ps2 = D%B(2)%G%C%ps
          
          call write_file_distributed(D%fault%handles(2), D%B(2)%F%F(mq2,mr2:pr2,ms2:ps2,:))
       end if
    end if


  end subroutine write_fault_output

  subroutine write_hat_output(D)
    use fault_output
    implicit none

    type(domain_type), intent(in) :: D
    integer :: mq1, mr1, ms1, pq1, pr1, ps1

    if ( D%w_fault .eqv.  .true.) then

       if (.not.in_fault_comm(1)) return
       
       mq1 = D%B(1)%G%C%mq
       mr1 = D%B(1)%G%C%mr
       ms1 = D%B(1)%G%C%ms
       pq1 = D%B(1)%G%C%pq
       pr1 = D%B(1)%G%C%pr
       ps1 = D%B(1)%G%C%ps
       
       call write_hats(D%fault%Uhat_pluspres(mr1:pr1,ms1:ps1,:), &
            D%fault%Vhat_pluspres(mr1:pr1,ms1:ps1,:), &
            D%fault%Uhat_pluspres(mr1:pr1,ms1:ps1,1:3), &
            D%fault%time_rup(mr1:pr1,ms1:ps1,1),D%fault)
       
    end if
       
     end subroutine write_hat_output

  subroutine write_slice_output(D)

    use slice_output
    implicit none

    type(domain_type), intent(in) :: D

    if (in_block_comm(1)) call write_slice(D%B(1)%F%F,D%B(1)%G%C, D%slicer)

  end subroutine write_slice_output

  subroutine write_seismogram_output(D)

    use slice_output
    implicit none

    type(domain_type), intent(in) :: D
    integer :: mq1, mr1, ms1, pq1, pr1, ps1, mq2, mr2, ms2, pq2, pr2, ps2
    real(kind = wp) :: energy, energy_total

    if(in_block_comm(1)) then
        mq1 = D%B(1)%G%C%mq
        mr1 = D%B(1)%G%C%mr
        ms1 = D%B(1)%G%C%ms
        pq1 = D%B(1)%G%C%pq
        pr1 = D%B(1)%G%C%pr
        ps1 = D%B(1)%G%C%ps

        call write_energy(D%B(1)%F%F, D%B(1)%G, D%B(1)%M, energy, energy_total)
        !print *, "energy total ", energy_total

        call write_seismogram(D%seismometers(1), D%t, D%B(1)%F%F ,energy_total)

    end if

    if(in_block_comm(2)) then
        mq2 = D%B(2)%G%C%mq
        mr2 = D%B(2)%G%C%mr
        ms2 = D%B(2)%G%C%ms
        pq2 = D%B(2)%G%C%pq
        pr2 = D%B(2)%G%C%pr
        ps2 = D%B(2)%G%C%ps

        call write_energy(D%B(2)%F%F, D%B(2)%G, D%B(2)%M, energy, energy_total)
        !print *, "energy total ", energy_total

        call write_seismogram(D%seismometers(2), D%t, D%B(2)%F%F, energy_total) 

    end if

  


  end subroutine write_seismogram_output

  subroutine write_energy(F, G, M, energy, energy_total)

    use mpi
    use mpi3dbasic, only : rank
    use datatypes, only : block_grid_t, block_material
    use mpi3dcomm, only : cartesian3d_t

    implicit none

    real(kind = wp) ::  energy, energy_total
    real(kind = wp) , dimension(:,:,:,:), allocatable, intent(in):: F
    real(kind = wp),  dimension(6,6) :: Smatrix
    real(kind = wp), dimension(3) :: x_grid
    real(kind = wp), dimension(6) :: S0
    type(block_grid_t)     , intent(in)    :: G
    type(block_material), intent(in) :: M
    type(cartesian3d_t) :: C

    integer            :: mx, my, mz, px, py, pz, nx, ny, nz, n    ! integer values for spatial directions
    integer            :: x, y, z, s, iz, fz, iy, fy, ix, fx
    integer :: ierr
    real(kind = wp)    ::rho, lambda, mu, J
    real(kind = wp)    :: hx, hy, hz 



    !allocate constant values
    !integers
    mx = G%C%mq
    my = G%C%mr
    mz = G%C%ms
    px = G%C%pq
    py = G%C%pr
    pz = G%C%ps
    nx = G%C%nq
    ny = G%C%nr
    nz = G%C%ns

    hx = G%hq
    hy = G%hr
    hz = G%hs

    C = G%C

    n = size(F, 4)
    
    !set default pml size
    ix = 8
    iy = 8
    iz = 8

    fx = 8
    fy = 8
    fz = 8

    energy = 0.0_wp
    energy_total = 0.0_wp



    ! cartesian mesh
    do z = mz, pz
      do y = my, py
         do x = mx, px
            x_grid(:) = G%X(x, y, z, 1:3)
            call  initial_stress_tensor(S0,x_grid,'TPV10')
          !if (((iz+1 > z) .or. (z > nz - fz)) .or. &
          !((iy+1 > y) .or. (y > ny - fy)) .or. &
          !((ix+1 > x) .or. (x > nx - fx))) cycle
            rho = (M%M(x,y,z,3))
            lambda = M%M(x,y,z,1)
            mu = M%M(x,y,z,2)
            J = G%J(x,y,z)
            !rhoJ_inv = 1.0_wp/(M%M(x,y,z,3)*G%J(x,y,z)) ! 1/(rho*J)
            !lambda2mu = M%M(x,y,z,1) + 2.0_wp*M%M(x,y,z,2) ! lambda+2*mu

            Smatrix = RESHAPE( [  &
            (lambda + mu) / (3.0 * lambda * mu + 2.0 * mu**2), &
            -lambda / (6.0 * lambda * mu + 4.0 * mu**2), &
            -lambda / (6.0 * lambda * mu + 4.0 * mu**2), &
            0.0_wp, 0.0_wp, 0.0_wp, &
            -lambda / (6.0 * lambda * mu + 4.0 * mu**2), &
            (lambda + mu) / (3.0 * lambda * mu + 2.0 * mu**2), &
            -lambda / (6.0 * lambda * mu + 4.0 * mu**2), &
            0.0_wp, 0.0_wp, 0.0_wp, &
            -lambda / (6.0 * lambda * mu + 4.0 * mu**2), &
            -lambda / (6.0 * lambda * mu + 4.0 * mu**2), &
            (lambda + mu) / (3.0 * lambda * mu + 2.0 * mu**2), &
            0.0_wp, 0.0_wp, 0.0_wp, &
            0.0_wp, 0.0_wp, 0.0_wp, 1.0_wp/mu, 0.0_wp, 0.0_wp, &
            0.0_wp, 0.0_wp, 0.0_wp, 0.0_wp, 1.0_wp/mu, 0.0_wp, &
            0.0_wp, 0.0_wp, 0.0_wp, 0.0_wp, 0.0_wp, 1.0_wp/mu ], &
            [6,6] )

            energy= energy + 0.5* (rho* DOT_PRODUCT(F(x,y,z, 1:3), F(x,y,z, 1:3)) &
             + DOT_PRODUCT(S0+F(x,y,z, 4:9), MATMUL(Smatrix, S0+F(x,y,z, 4:9))))* J * hx *hy *hz
 

            energy0= energy0 + DOT_PRODUCT(S0, MATMUL(Smatrix, S0))* J * hx *hy *hz
 

             !energy = energy + F(x, y, z,1 )* F(x,y,z,1)+F(x, y,z,2) *F(x,y,z,2) + F(x,y,z ,3) * F(x,y,z,3) &
            ! &+ F(x, y, z,4 )* F(x,y,z,4)+F(x, y,z,5) *F(x,y,z,5) + F(x,y,z ,6) * F(x,y,z,6) &
            ! &+ F(x, y, z,7 )* F(x,y,z,7)+F(x, y,z,8) *F(x,y,z,8) + F(x,y,z ,9) * F(x,y,z,9)

            end do
          end do
       end do

  print *, "energy", energy


  call MPI_Allreduce(energy, energy_total, 1, MPI_DOUBLE, MPI_SUM, C%comm, ierr)

  print *, "energy total", energy_total


  end subroutine write_energy

  subroutine eval_mms(D)

    implicit none
    type(domain_type),intent(inout) :: D

    integer :: i

    do i = 1, D%nblocks
      if (.not.in_block_comm(i)) cycle
       call eval_block_mms(D%B(i), D%t, D%mms_vars)
    end do

  end subroutine eval_mms

  subroutine norm_fields(D)

    implicit none
    type(domain_type),intent(inout) :: D

    integer :: i

     if (in_block_comm(1)) call norm_fields_block(D%B(1))
     if (in_block_comm(2)) call norm_fields_block(D%B(2))

  end subroutine norm_fields

  subroutine scale_rates(D,A)

    !> @brief multiply all rates by RK coefficient A

    use block, only : scale_rates_block
    use iface, only : scale_rates_iface

    implicit none

    type(domain_type),intent(inout) :: D
    real(kind = wp),intent(in) :: A

    integer :: i

    ! first within blocks and on their boundaries

      if (in_block_comm(1)) call scale_rates_block(D%B(1),A)
      if (in_block_comm(2)) call scale_rates_block(D%B(2),A)


    ! and then on interfaces

    do i = 1,D%nifaces
       call scale_rates_iface(D%I(i),A)
    end do

  end subroutine scale_rates

  subroutine set_rates(D)

    !> @brief set rates using the PDE
    !> @details set rates using the PDE (in a low storage RK method, the new rates
    !> at the current stage are added to the old rates, instead of overwriting
    !> the rates array)

    use block, only : set_rates_block
    use moment_tensor, only : set_moment_tensor, moment_tensor_body_force, set_moment_tensor_smooth

    implicit none

    type(domain_type),intent(inout) :: D

       if (in_block_comm(1)) call set_rates_block(D%B(1), D%type_of_mesh)
       if (in_block_comm(2)) call set_rates_block(D%B(2), D%type_of_mesh)


    if (D%B(1)%MT%use_moment_tensor) then
       !call set_moment_tensor(D%B(1),D%t)
       if(D%mollify_source) then
          
          call set_moment_tensor_smooth(D%B(1),D%t)

       else
          
          call set_moment_tensor(D%B(1),D%t)
       end if
       
       !call moment_tensor_body_force(D%B(1),D%t) 
    end if

    if (D%B(2)%MT%use_moment_tensor) then
       !call set_moment_tensor(D%B(2),D%t)

       if(D%mollify_source) then
          
          call set_moment_tensor_smooth(D%B(2),D%t)

       else
          
          call set_moment_tensor(D%B(2),D%t)
       end if
       
       !call set_moment_tensor2(D%B(2),D%t)
       
       !call moment_tensor_body_force(D%B(2),D%t)
    end if
  end subroutine set_rates


  subroutine update_fields(D,dt,stage,RKstage)

    !> @brief use rates to update fields

    use block, only : update_fields_block
    use iface, only : update_fields_iface
    use plastic, only : update_fields_plastic
    implicit none

    type(domain_type),intent(inout) :: D
    real(kind = wp),intent(in) :: dt
    integer,intent(in) :: stage,RKstage

    integer :: i

    ! first within blocks and on their boundaries

      if (in_block_comm(1)) call update_fields_block(D%B(1),dt)
      if (in_block_comm(2)) call update_fields_block(D%B(2),dt)


    ! and then on interfaces

    do i = 1,D%nifaces
       call update_fields_iface(D%I(i),dt)
    end do

    if (stage==RKstage) then
       !if (in_block_comm(1)) call update_fields_plastic(D%B(1),D%B(1)%P,D%B(1)%G,D%B(1)%M,D%dt,D%t,D%problem,D%response)
       !if (in_block_comm(2)) call update_fields_plastic(D%B(2),D%B(2)%P,D%B(2)%G,D%B(2)%M,D%dt,D%t,D%problem,D%response)
       if (in_block_comm(1)) call update_fields_plastic(D%B(1),D%B(1)%P,D%B(1)%G,D%B(1)%M,D%dt,D%t,D%problem,D%response,&
            D%plastic_model)
       if (in_block_comm(2)) call update_fields_plastic(D%B(2),D%B(2)%P,D%B(2)%G,D%B(2)%M,D%dt,D%t,D%problem,D%response,&
            D%plastic_model)
    end if
  end subroutine update_fields

end module domain
