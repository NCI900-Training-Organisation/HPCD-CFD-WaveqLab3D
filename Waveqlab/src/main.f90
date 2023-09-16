!----------------------------------------------------------
! WAVEQLAB3D
!----------------------------------------------------------
!
!> @author Eric Dunham
!> @author Kenneth Duru
!> @author Hari Radhakrishnan
!> @copyright Stanford University

!> @file main.f90

!> @fn main
!> @brief This is the main program.
!> @details Its purpose is to initialize a domain
!> (a set of blocks coupled across interfaces, with fields, grid,
!> material properties, etc. defined both within blocks and on interfaces)
!> and then evolve the fields according to some partial differential equation
!> (e.g., elastic or acoustic wave equation) with appropriate boundary and
!> interface conditions.

program main

  use common, only : wp
  use mpi3dbasic, only: start_mpi, finish_mpi, is_master
  !use hdf5_output
  use domain, only : domain_type,init_domain, close_domain, &
                     eval_mms, norm_fields, write_fault_output
  use time_step, only : RK_type,init_RK,time_step_RK
  implicit none

  ! domain_type contains all properties of a domain, including fields
  ! defined at a particular time t; evolving the solution in time is
  ! an operation done to the domain

  type(domain_type) :: D

  ! time stepping parameters: these will be specific to the time-stepping
  ! method being used. we typically use a low-storage Runge-Kutta scheme
  ! (either 3rd or 4th order accurate) but the idea is that any time-stepping
  ! method could be used to advance the solution defined in the domain_type

  type(RK_type) :: RK ! Runge-Kutta coefficients
  !integer,parameter :: nt = 11 ! number of time steps
  real(kind = wp),parameter :: dt = 0.1_wp ! time step

  integer :: n

  ! Variables for parsing the input file
  character(len=256) :: ifname !< Input filename
  integer :: infile, len_ifname, stat
  real(kind = wp) :: t1,t2     ! timing information




  !---------------------------------------------------------------------------
  !                       END OF VARIABLES
  !---------------------------------------------------------------------------

  ! initialize

  call start_mpi ! Initialize MPI for parallel processing
  !call start_hdf_output() ! Initialize the parallel I/O using HF5

  ! Read the command-line to get the input filename
  call get_command_argument(1, ifname, length=len_ifname, status=stat)
  if (stat /= 0) stop ':: Problem reading input filename from commandline.'

  ! Read the input file
  open(newunit=infile, file=ifname, iostat=stat, status='old')
  if (stat/=0) stop ':: Cannot open input file'

  call init_RK(RK) ! Runge-Kutta coefficients
  call init_domain(D, infile) ! domain

  !call create_dataset("seismogram1", 0, [0])
  !call create_dataset("seismogram2", 0, [0])

  ! loop over all time steps, advancing solution according to wave equation
  ! and boundary and interface conditions; output is done within the time-
  ! stepping routine

  do n = 1, D%nt
    call cpu_time(t1)
    call time_step_RK(D,D%dt,RK, n)
    
    if (is_master()) then 
      call cpu_time(t2)
      print *, 'n = ',n,' of ', D%nt,' time steps, t = ',D%t,' time in time step = ',t2 - t1
    end if

     if (D%mms_vars%use_mms) then

        ! Analytical solution
        call eval_mms(D)

        ! norm of error
        call norm_fields(D)

        !         if (my_id == 0) then
        print *, 'MMS error in each block: ',D%B(1)%sum*sqrt(D%B(1)%G%hq * D%B(1)%G%hr * D%B(1)%G%hs), &
             ' ', D%B(2)%sum*sqrt(D%B(2)%G%hq * D%B(2)%G%hr * D%B(2)%G%hs), ' at time = ',D%t
        !            write(30, *) t, sum1*sqrt(hq1*hr1*hs1), sum2*sqrt(hq2*hr2*hs2)
        !         end if

     else
        ! timing information
        ! call cpu_time(t2)

        ! status update to stdout

        !         if (my_id == 0) then
        !    print *, 'n = ',n,' of ', nt,' time steps, t = ',t,', wall clock time / time step = ',t2-t1
        !print*,t,handles%Uhat_pluspres(26,26,3),V(1,26,26,3)-U(mx1,26,26,3) !,W(26,201)
        !            print*,t,handles%Uhat_pluspres(11,11,3), Theta(11,11)
        !      print *, n, D%t, D%B(1)%G%mr, D%B(1)%G%pr, D%B(1)%G%ms, D%B(1)%G%ps, &
        !         D%handles%Uhat_pluspres(1,(D%B(1)%G%mr+D%B(1)%G%pr)/2,(D%B(1)%G%ms+D%B(1)%G%ps)/2,3)
        !             print *, n, D%t, D%fault%Uhat_pluspres(1,6,6,3),  D%fault%Uhat_pluspres(1,6,16,3), &
        !               D%fault%Uhat_pluspres(1,11,11,3), D%fault%Uhat_pluspres(1,16,6,3),  D%fault%Uhat_pluspres(1,16,16,3)
        !         end if
        !    print *, 'coordinates : ', X1(mx1, 76, 201, :), X2(1, 76, 201, :)
     end if
  end do

  call close_domain(D)
  !call finish_hdf_output()

  call finish_mpi

end program main
