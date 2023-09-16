# CMake generated Testfile for 
# Source directory: /scratch/vp91/fxf900/waveqlab3d/Waveqlab/src
# Build directory: /scratch/vp91/fxf900/waveqlab3d/Waveqlab/build_acc_Release
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(mpi_test1 "/half-root/usr/bin/cmake" "-D" "in=test_rup_cart_fric.in" "-D" "prefix=test_rup_cart_fric" "-D" "t=1" "-D" "n=4" "-P" "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/../cmake/run_mpi_test.cmake")
set_tests_properties(mpi_test1 PROPERTIES  _BACKTRACE_TRIPLES "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;125;add_test;/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;0;")
add_test(mpi_test2 "/half-root/usr/bin/cmake" "-D" "in=test_rup_curv_fric.in" "-D" "prefix=test_rup_curv_fric" "-D" "t=2" "-D" "n=4" "-P" "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/../cmake/run_mpi_test.cmake")
set_tests_properties(mpi_test2 PROPERTIES  _BACKTRACE_TRIPLES "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;133;add_test;/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;0;")
add_test(premesh_test1 "/half-root/usr/bin/cmake" "-D" "in=test_rup_cart_fric_premesh.in" "-D" "prefix=test_rup_cart_fric" "-D" "t=1" "-D" "n=4" "-P" "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/../cmake/run_test.cmake")
set_tests_properties(premesh_test1 PROPERTIES  _BACKTRACE_TRIPLES "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;141;add_test;/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;0;")
add_test(premesh_test2 "/half-root/usr/bin/cmake" "-D" "in=test_rup_curv_fric_premesh.in" "-D" "prefix=test_rup_curv_fric" "-D" "t=2" "-D" "n=4" "-P" "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/../cmake/run_test.cmake")
set_tests_properties(premesh_test2 PROPERTIES  _BACKTRACE_TRIPLES "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;149;add_test;/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;0;")
add_test(serial_test1 "/half-root/usr/bin/cmake" "-D" "in=test_rup_cart_fric.in" "-D" "prefix=test_rup_cart_fric" "-D" "t=1" "-D" "n=1" "-P" "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/../cmake/run_mpi_test.cmake")
set_tests_properties(serial_test1 PROPERTIES  _BACKTRACE_TRIPLES "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;157;add_test;/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;0;")
add_test(serial_test2 "/half-root/usr/bin/cmake" "-D" "in=test_rup_curv_fric.in" "-D" "prefix=test_rup_curv_fric" "-D" "t=2" "-D" "n=1" "-P" "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/../cmake/run_mpi_test.cmake")
set_tests_properties(serial_test2 PROPERTIES  _BACKTRACE_TRIPLES "/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;165;add_test;/scratch/vp91/fxf900/waveqlab3d/Waveqlab/src/CMakeLists.txt;0;")
