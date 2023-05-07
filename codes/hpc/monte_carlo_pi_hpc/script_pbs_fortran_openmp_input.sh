#!/bin/bash 
#PBS -q day
#PBS -o outP.o
#PBS -e outP.e
#PBS -N demo_me522P
#PBS -l nodes=1:ppn=1
#PBS -V

cd ${PBS_O_WORKDIR}
echo "Running on: " 
cat ${PBS_NODEFILE}
cat $PBS_NODEFILE > machines.list
echo "Program Output begins: "
time ./mcpiP.exe $1 $2
