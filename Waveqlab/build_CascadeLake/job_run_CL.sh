#!/bin/bash

#PBS -P nf47
#PBS -q normal
#PBS -l ncpus=96
#PBS -l mem=384gb
#PBS -l walltime=00:10:00
#PBS -l storage=scratch/nf47+gdata/nf47
#PBS -l jobfs=190GB
#PBS -e test.err
#PBS -o test.out
### set email notification
#PBS -m bea
#PBS -M frederick.fung@anu.edu.au
#PBS -l wd


module load libunwind/1.2.1
module load openmpi/4.0.2
export MPIP="-c"
### launch the application

mpirun -np 96 -x LD_PRELOAD=/scratch/nf47/mpiP-3.5/libmpiP.so ./waveqlab3d ../inputfile/TPV5_200m.in  >TPV5_200m.txt

