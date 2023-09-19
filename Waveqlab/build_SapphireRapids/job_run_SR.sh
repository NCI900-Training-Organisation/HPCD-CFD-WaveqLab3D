#!/bin/bash

### fill in parameters for this job submission script
#PBS -P nf47
#PBS -q ???
#PBS -l ncpus=???
#PBS -l mem=???
#PBS -l walltime=00:10:00
#PBS -l storage=???
#PBS -l jobfs=190GB
#PBS -e test.err
#PBS -o test.out
### set email notification
#PBS -m bea
#PBS -M YOUR EMAIL
#PBS -l wd


module load libunwind/1.2.1
module load intel-mpi/2021.8.0
export MPIP="-c"

### launch the application
mpirun -np 104 ./waveqlab3d ../inputfile/TPV5_200m.in  >TPV5_200m.txt

 