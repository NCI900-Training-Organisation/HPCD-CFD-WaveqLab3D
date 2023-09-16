#!/bin/bash

#PBS -P vp91
#PBS -q normal
#PBS -l ncpus=480
#PBS -l mem=1920gb
#PBS -l walltime=04:00:00
#PBS -l storage=scratch/vp91
#PBS -l jobfs=190GB
#PBS -e test.err
#PBS -o test.out
### set email notification
#PBS -m bea
#PBS -M frederick.fung@anu.edu.au
#PBS -l wd

OUTPUT_DIR=/scratch/vp91/fxf900/waveqlab3d/Waveqlab/build_acc

#module load openmpi/4.1.5
#module load nvidia-hpc-sdk/22.5  
#export OMP_NUM_THREADS=6
module load intel-mpi/2019.5.281
#module load padb/3.2
#module load mpiP
#module load hpctoolkit
#module load ipm
### launch the application



#mpirun -np 6 ./waveqlab3d ../inputfile/whole_space_drp6_61.in  >whole_space_drp6_61.txt
#mpirun -np 48 ./waveqlab3d ../inputfile/energy_upwind.in  >TPV5_energy_upwdrp679_c48.txt
mpirun -np 480 ./waveqlab3d ../inputfile/TPV10JCP2022_75m.in  >TPV10_75m_upw7.txt

#mpirun -np 12 ./waveqlab3d ../inputfile/test1_upw7_125.in  >test1_upw7_126.txt
#mpirun -np 2 ./waveqlab3d ../inputfile/hackathon_benchmark.in  >benchmark
#mpirun -np 4 ./waveqlab3d ../inputfile/test1_upw7_200.in  >test1_upw7_200.txt

#cd ${PBS_JOBFS}
#nsys profile --trace=mpi,openacc,nvtx  --force-overwrite true -o waveqlab_profile_05sec_acc_mpi_fields mpirun -np 2 ./waveqlab3d ../inputfile/hackathon_benchmark.in  >benchmark_acc
#cp  -r ${PBS_JOBFS}/* ${OUTPUT_DIR}
 
