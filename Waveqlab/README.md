# README #

WaveQLab3D is a code for 3D seismic wave propagation and earthquake rupture dynamics. It solves the elastic wave equation in curvilinear coordinates (i.e., complex geometries) with a possibly nonplanar frictional fault interface. The current version supports off-fault viscoplasticity, spatially variable elastic properties, and several friction laws (including rate-and-state and slip-weakening). The code is under development and is available under the MIT license. Authors include Kenneth Duru, Sam Bydlon, Eric Dunham, and Kyle Withers with parallelization by Hari Radhakrishnan.

Compiling the CPU code on Gadi, do
1. $Module load openmpi/4.0.7 gcc/11.1.0
2. $cd Waveqlab/build
3. For building for testing purposes $cmake -DCMAKE_BUILD_TYPE=Debug ../src/ 
   For production runs (enabling optimization via compiler flags), $cmake -DCMAKE_BUILD_TYPE=Release ../src/

Following the steps to compile on Gadi with openmpi, step 3 might throw in MPI Fortran Not Found error. This error is seemingly due to openmpi module and lib are not linked. The direct path of openmpi lib should be specfied by following step below

1. at build, $ccmake ./
2. option t 
3. input in MPI_Fortran_F77_HEADER_DIR with /apps/openmpi-mofed5.5-pbs2021.1/4.0.7/include
4. input in MPI_Fortran_MODULE_DIR with /apps/openmpi-mofed5.5-pbs2021.1/4.0.7/lib 
5. option c to config
6. option g to generate new makefile
