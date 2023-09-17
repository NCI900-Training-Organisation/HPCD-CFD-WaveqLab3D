module seismogram
  use mpi
  use common, only : wp
  use datatypes, only : block_grid_t, seismogram_type
  implicit none

contains


  subroutine init_seismogram(input,S,name,G)

    implicit none

    integer,intent(in) :: input
    type(block_grid_t), intent(in) :: G
    type(seismogram_type),intent(inout) :: S
    character(*),intent(in) :: name

    integer :: mx,my,mz,px,py,pz
    logical :: output_exact_moment
    logical :: output_seismograms,output_fault_topo,output_fields_block1,output_fields_block2
    integer :: stride_fields,n,stat
    character(256) :: temp,filename
    character(3) :: field

    !real(kind = wp) :: xmin, xmax, ymin, ymax, zmin, zmax

    namelist /output_list/ output_exact_moment, output_seismograms, output_fault_topo,   &
                           output_fields_block1,output_fields_block2,stride_fields

    mx = G%C%mq
    my = G%C%mr
    mz = G%C%ms
    px = G%C%pq
    py = G%C%pr
    pz = G%C%ps

    ! defaults

    output_exact_moment = .false.
    output_seismograms = .false.
    output_fields_block1 = .false.
    output_fields_block2 = .false.
    stride_fields = 1

    rewind(input)
    read(input,nml=output_list,iostat=stat)
    if (stat>0) stop 'error reading namelist output_list'

    S%output_exact_moment = output_exact_moment
    S%output_seismograms = output_seismograms
    S%output_fields_block1 = output_fields_block1
    S%output_fields_block2 = output_fields_block2
    S%stride_fields = stride_fields

    ! initialization for seismogram output

    if (S%output_seismograms) then

       ! move to start of station list

       if (S%block_num == 1) then
          rewind(input)
          do
             read(input,'(a)',end=100) temp
             if (temp=='!---begin:station_listU---') exit
          end do

          ! determine number of stations in list

          S%nstations = 0
          do
             read(input,'(a)',end=100) temp
             if (temp=='!---end:station_listU---') exit
             S%nstations = S%nstations+1
          end do
       end if

       if (S%block_num == 2) then
          rewind(input)
          do
             read(input,'(a)',end=100) temp
             if (temp=='!---begin:station_listV---') exit
          end do

          ! determine number of stations in list

          S%nstations = 0
          do
             read(input,'(a)',end=100) temp
             if (temp=='!---end:station_listV---') exit
             S%nstations = S%nstations+1
          end do
       end if

       ! allocate station indices array and output file unit array

       if (S%output_exact_moment) then
         allocate(S%file_unit(2*S%nstations))
       else
         allocate(S%file_unit(S%nstations))
       end if
           
         allocate(S%i(S%nstations),S%j(S%nstations),S%k(S%nstations))
         allocate(S%i_phys(S%nstations),S%j_phys(S%nstations), &
              S%k_phys(S%nstations)) 

       ! read station list again, this time storing station indices

       rewind(input)

       if(S%block_num == 1) then
          do
             read(input,'(a)',end=100) temp
             if (temp=='!---begin:station_listU---') exit
          end do
       end if

       if(S%block_num == 2) then
          do
             read(input,'(a)',end=100) temp
             if (temp=='!---begin:station_listV---') exit
          end do
       end if

      if(S%nstations > 0) then
       do n = 1,S%nstations
          read(input,*) S%i_phys(n),S%j_phys(n),S%k_phys(n)
          !print *, S%i_phys(n),S%j_phys(n),S%k_phys(n)
       end do
       
       
       !xmin = minval(G%X(mx:px,my:py,mz:pz,1))
       !xmax = maxval(G%X(mx:px,my:py,mz:pz,1))
       !ymin = minval(G%X(mx:px,my:py,mz:pz,2))
       !ymax = maxval(G%X(mx:px,my:py,mz:pz,2))
       !zmin = minval(G%X(mx:px,my:py,mz:pz,3))
       !zmax = maxval(G%X(mx:px,my:py,mz:pz,3))
       S%i(:) = -10000
       S%j(:) = -10000
       S%k(:) = -10000
       
       call Find_Coordinates(G%X, S%i_phys, S%j_phys, S%k_phys, &
            S%i, S%j, S%k, S%nstations, mx, my, mz, px, py, pz)

       ! open file units for output

       do n = 1,S%nstations
          if (S%i(n) > 0 .and. S%j(n) > 0 .and. S%k(n) > 0) then
            write(filename,'(a,i0,a,i0,a,i0,a,i0,a)') trim(adjustl(name)) // '_', &
                S%i(n),'_',S%j(n),'_',S%k(n),'_block',S%block_num,'.dat'
            open(newunit=S%file_unit(n),file=filename)
          end if
       end do

       if( S%output_exact_moment) then
       do n = 1,S%nstations
          if (S%i(n) > 0 .and. S%j(n) > 0 .and. S%k(n) > 0) then
            write(filename,'(a,i0,a,i0,a,i0,a,i0,a)') trim(adjustl(name)) // '_exact_', &
                S%i(n),'_',S%j(n),'_',S%k(n),'_block',S%block_num,'.dat'
            open(newunit=S%file_unit(S%nstations+n),file=filename)
          end if
       end do 
       end if
     end if

    end if

    ! initialization for body fields output

    if (S%output_fields_block1.or.S%output_fields_block2) then

       ! open file units for output

       do n = 1,9

          select case(n)
          case(1)
             field = 'vx'
          case(2)
             field = 'vy'
          case(3)
             field = 'vz'
          case(4)
             field = 'sxx'
          case(5)
             field = 'sxy'
          case(6)
             field = 'sxz'
          case(7)
             field = 'syy'
          case(8)
             field = 'syz'
          case(9)
             field = 'szz'
          end select

          if (S%output_fields_block1 .and. S%block_num == 1) then
             write(filename,'(a,a,a)') trim(adjustl(name)) // '_block1_',trim(adjustl(field)),'.dat'
             open(newunit=S%file_unit_block1(n),file=filename)
          end if

          if (S%output_fields_block2 .and. S%block_num == 2) then
             write(filename,'(a,a,a)') trim(adjustl(name)) // '_block2_',trim(adjustl(field)),'.dat'
             open(newunit=S%file_unit_block2(n),file=filename)
          end if

       end do

    end if

    return

100 stop 'error reading seismogram station list'

  end subroutine init_seismogram


  subroutine write_seismogram(S, t, F, energy_total)

    use mpi3dbasic, only : rank
    implicit none

    type(seismogram_type),intent(in) :: S
    real(kind = wp),intent(in) :: t, energy_total
    real(kind = wp), dimension(:,:,:,:), allocatable, intent(in) :: F
    integer :: n
  


    if (S%output_seismograms .and. S%nstations > 0) then

       do n = 1,S%nstations
          if (S%i(n) > 0 .and. S%j(n) > 0 .and. S%k(n) > 0) then
            write(S%file_unit(n),'(10f15.10, f16.5, i5)') t, F(S%i(n),S%j(n),S%k(n),1:9), energy_total, rank
          end if
       end do

    end if

    if (S%output_fields_block1 .and. S%block_num == 1) then
       do n = 1,9
          write(S%file_unit_block1(n),*) F(:,:,:,n)
          print *, S%file_unit_block1(n)
          flush(S%file_unit_block1(n))
       end do

    end if

  end subroutine write_seismogram



  subroutine destroy_seismogram(S)

    implicit none

    type(seismogram_type),intent(inout) :: S

    integer :: n

    if (S%output_seismograms) then

      if (S%nstations > 0) then
         do n = 1,S%nstations
            if (S%i(n) > 0 .and. S%j(n) > 0 .and. S%k(n) > 0) close(S%file_unit(n))
         end do
       end if

      if (allocated(S%i)) deallocate(S%i,S%j,S%k,S%file_unit)

    end if

    if (S%output_fields_block1) then

       do n = 1,9
          close(S%file_unit_block1(n))
       end do

    end if

    if (S%output_fields_block2) then

       do n = 1,9
          close(S%file_unit_block2(n))
       end do

    end if

  end subroutine destroy_seismogram



  subroutine Find_Coordinates(XX, x1, y1, z1, x_i, y_j, z_k, nstations, mx, my, mz, px, py, pz)

    ! Given the physical positions of the receivers x1, y1, z1
    ! Find the corresponding indices in x_i, y_j, z_k in the mesh XX

    implicit none

    integer, intent(in) :: mx, my, mz, px, py, pz               ! size of the grid-block
    integer, intent(in) :: nstations
    real(kind = wp), dimension(:), intent(in) :: x1, y1, z1                ! receiver  positions
    integer, dimension(:), intent(out) :: x_i, y_j, z_k         ! spatial indices of receiver  positions to be found
    real(kind = wp), dimension(:,:,:,:), allocatable, intent(in) :: XX                  ! grid
    integer :: i, j, k, c,  i0, j0, k0
    real(kind = wp) :: vec(3), dist, mindist,xmin, xmax, ymin, ymax, zmin, zmax
    real(kind = wp) :: hx,hy,hz, dist0

    xmin = minval(XX(mx:px,my:py,mz:pz,1))
    xmax = maxval(XX(mx:px,my:py,mz:pz,1))
    ymin = minval(XX(mx:px,my:py,mz:pz,2))
    ymax = maxval(XX(mx:px,my:py,mz:pz,2))
    zmin = minval(XX(mx:px,my:py,mz:pz,3))
    zmax = maxval(XX(mx:px,my:py,mz:pz,3))

    hx = 1d0
    hy = 1d0
    hz = 1d0

    !print *,  xmin, xmax, ymin, ymax, zmin, zmax
    !print *, nstations
    do c = 1, nstations
       
        

       i0 = -9999
       j0 = -9999
       k0 = -9999
          
       mindist = 1.0e8_wp


       !if ((xmin <= x1(c) .and. x1(c) <= xmax) .and. &
       !     (ymin <= y1(c) .and. y1(c) <= ymax) .and. &
       !     (zmin <= z1(c) .and. z1(c) <= zmax)) then

          


          k_loop: do k = mz, pz
             do j = my, py
                do i = mx, px

                   hx = XX(px, j, k, 1)-XX(px-1, j, k, 1)
                   hy = XX(i, py, k, 2)-XX(i, py-1, k, 2)
                   hz = XX(i, j, pz, 3)-XX(i, j, pz-1, 3)

                   if (i<px) hx = XX(i+1, j, k, 1)-XX(i, j, k, 1)
                   if (j<py) hy = XX(i, j+1, k, 2)-XX(i, j, k, 2)
                   if (k<pz) hz = XX(i, j, k+1, 3)-XX(i, j, k, 3)


                   vec = [XX(i, j, k, 1)-x1(c), XX(i, j, k, 2)-y1(c), XX(i, j, k, 3)-z1(c)]
                   dist = sqrt(dot_product(vec, vec))
                   dist0 = sqrt(hx**2 + hy**2 + hz**2)
                   
                   !if (((abs(XX(i, j, k, 1)-x1(c))<=0.8_wp*hx) .and. &
                   !     (abs(XX(i, j, k, 2)-y1(c))<=0.8_wp*hy) .and. &
                   !     (abs(XX(i, j, k, 3)-z1(c))<=0.8_wp*hz)) .and. &
                   !      (dist <= mindist)) then

                   if ((dist <= mindist) .and. (dist <= 0.5*dist0))  then
                   !if ((dist <= mindist))  then

                      i0 = i
                      j0 = j
                      k0 = k

                      x_i(c) = i0
                      y_j(c) = j0
                      z_k(c) = k0

                      mindist = dist

                   end if
                   
                   
                end do
             end do

          end do k_loop
          !print*, mindist, c, i0, j0, k0, XX(i0, j0, k0, 1), XX(i0, j0, k0, 2), XX(i0, j0, k0, 3), x1(c), y1(c), z1(c)
       !end if
       if (i0 > 0 .and. j0>0 .and. k0 > 0) then
          print*, mindist, c, i0, j0, k0, XX(i0, j0, k0, 1), XX(i0, j0, k0, 2), XX(i0, j0, k0, 3), x1(c), y1(c), z1(c)
       end if
       
        !x_i(c) = i0
        !y_j(c) = j0
        !z_k(c) = k0
     end do


  end subroutine Find_Coordinates

    subroutine Find_Coordinates_moment(XX, x1, y1, z1, x_i, y_j, z_k, nstations,nq,nr,ns, mx, my, mz, px, py, pz)

    ! Given the physical positions of the receivers x1, y1, z1
    ! Find the corresponding indices in x_i, y_j, z_k in the mesh XX

    implicit none

    integer, intent(in) :: mx, my, mz, px, py, pz, nq, nr, ns               ! size of the grid-block
    integer, intent(in) :: nstations
    real(kind = wp), dimension(:), intent(in) :: x1, y1, z1                ! receiver  positions
    integer, dimension(:), intent(out) :: x_i, y_j, z_k         ! spatial indices of receiver  positions to be found
    real(kind = wp), dimension(:,:,:,:), allocatable, intent(in) :: XX                  ! grid
    integer :: i, j, k, c
    real(kind = wp) :: vec(3), dist, mindist,xmin, xmax, ymin, ymax, zmin, zmax
    real(kind = wp) :: hx,hy,hz

    xmin = minval(XX(mx:px,my:py,mz:pz,1))
    xmax = maxval(XX(mx:px,my:py,mz:pz,1))
    ymin = minval(XX(mx:px,my:py,mz:pz,2))
    ymax = maxval(XX(mx:px,my:py,mz:pz,2))
    zmin = minval(XX(mx:px,my:py,mz:pz,3))
    zmax = maxval(XX(mx:px,my:py,mz:pz,3))

    hx = 1d0
    hy = 1d0
    hz = 1d0

    do c = 1, nstations
       x_i(c) = -9999
       y_j(c) = -9999
       z_k(c) = -9999



       if ((xmin <= x1(c) .and. x1(c) <= xmax) .and. &
            (ymin <= y1(c) .and. y1(c) <= ymax) .and. &
            (zmin <= z1(c) .and. z1(c) <= zmax)) then
          
          mindist = 1.0e8_wp
          !        hx = XX(px, j, k, 1)-XX(px-1, j, k, 1)
          !        hy = XX(i, py, k, 1)-XX(i, py-1, k, 2)
          !        hz = XX(i, j, pz, 1)-XX(i, j, pz-1, 3)


          k_loop: do k = mz, pz
             do j = my, py
                do i = mx, px
                   
                   !print*, i,j,k,XX(i,j,k,1)
                   
                   if (i<nq) hx = XX(i+1, j, k, 1)-XX(i, j, k, 1)
                   if (j<nr) hy = XX(i, j+1, k, 2)-XX(i, j, k, 2)
                   if (k<ns) hz = XX(i, j, k+1, 3)-XX(i, j, k, 3)
                   
                   vec = [XX(i, j, k, 1)-x1(c), XX(i, j, k, 2)-y1(c), XX(i, j, k, 3)-z1(c)]
                   dist = sqrt(dot_product(vec, vec))
                   
                   !                    if (((abs(XX(i, j, k, 1)-x1(c))<=0.9d0*hx) .and. &
                   !                         (abs(XX(i, j, k, 2)-y1(c))<=0.9d0*hy) .and. &
                   !                         (abs(XX(i, j, k, 3)-z1(c))<=0.9d0*hz))) then
                   
                   if (mx == 1 .and. px == 25 .and. my == 1 .and. py == 25) then
                      !print*,XX(i,j,k,1)
                      ! print*,'dist_min = :',i,j,k,dist
                   end if
                   if (dist <= mindist) then
                      
                      x_i(c) = i
                      y_j(c) = j
                      z_k(c) = k
                      
                      mindist = dist
                      
                   end if
                end do
             end do
          end do k_loop
       end if
    end do
       
  end subroutine Find_Coordinates_moment

end module seismogram
