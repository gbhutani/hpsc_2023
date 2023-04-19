#!/bin/bash 
#PBS -q day
#PBS -j oe
#PBS -N str_scaling
#PBS -l nodes=1:ppn=20
#PBS -l walltime=00:30:00
#PBS -V
#PBS -t 2-8

export num_pts=1000000000
cd ${PBS_O_WORKDIR}
echo "Running on: " 
cat ${PBS_NODEFILE}
cat $PBS_NODEFILE > machines.list
echo "Program Output begins: "
/usr/bin/time -f "%e" -o time-${PBS_ARRAYID}.txt ./mcpiP.exe $num_pts $PBS_ARRAYID
