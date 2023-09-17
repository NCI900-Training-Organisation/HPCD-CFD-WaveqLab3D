# CMake generated Testfile for 
# Source directory: /g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src
# Build directory: /g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/build_SapphireRapids
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(mpi_test1 "/half-root/usr/bin/cmake" "-D" "in=test_rup_cart_fric.in" "-D" "prefix=test_rup_cart_fric" "-D" "t=1" "-D" "n=4" "-P" "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/../cmake/run_mpi_test.cmake")
set_tests_properties(mpi_test1 PROPERTIES  _BACKTRACE_TRIPLES "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;116;add_test;/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;0;")
add_test(mpi_test2 "/half-root/usr/bin/cmake" "-D" "in=test_rup_curv_fric.in" "-D" "prefix=test_rup_curv_fric" "-D" "t=2" "-D" "n=4" "-P" "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/../cmake/run_mpi_test.cmake")
set_tests_properties(mpi_test2 PROPERTIES  _BACKTRACE_TRIPLES "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;124;add_test;/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;0;")
add_test(premesh_test1 "/half-root/usr/bin/cmake" "-D" "in=test_rup_cart_fric_premesh.in" "-D" "prefix=test_rup_cart_fric" "-D" "t=1" "-D" "n=4" "-P" "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/../cmake/run_test.cmake")
set_tests_properties(premesh_test1 PROPERTIES  _BACKTRACE_TRIPLES "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;132;add_test;/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;0;")
add_test(premesh_test2 "/half-root/usr/bin/cmake" "-D" "in=test_rup_curv_fric_premesh.in" "-D" "prefix=test_rup_curv_fric" "-D" "t=2" "-D" "n=4" "-P" "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/../cmake/run_test.cmake")
set_tests_properties(premesh_test2 PROPERTIES  _BACKTRACE_TRIPLES "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;140;add_test;/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;0;")
add_test(serial_test1 "/half-root/usr/bin/cmake" "-D" "in=test_rup_cart_fric.in" "-D" "prefix=test_rup_cart_fric" "-D" "t=1" "-D" "n=1" "-P" "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/../cmake/run_mpi_test.cmake")
set_tests_properties(serial_test1 PROPERTIES  _BACKTRACE_TRIPLES "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;148;add_test;/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;0;")
add_test(serial_test2 "/half-root/usr/bin/cmake" "-D" "in=test_rup_curv_fric.in" "-D" "prefix=test_rup_curv_fric" "-D" "t=2" "-D" "n=1" "-P" "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/../cmake/run_mpi_test.cmake")
set_tests_properties(serial_test2 PROPERTIES  _BACKTRACE_TRIPLES "/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;156;add_test;/g/data/nf47/HPCD-CFD-WaveqLab3D/Waveqlab/src/CMakeLists.txt;0;")
