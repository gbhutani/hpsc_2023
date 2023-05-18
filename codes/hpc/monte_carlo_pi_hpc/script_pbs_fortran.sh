#!/bin/bash 
#PBS -q serial
#PBS -o out.o
#PBS -e out.e
#PBS -N demo_me522
#PBS -l nodes=1:ppn=1
#PBS -V

cd ${PBS_O_WORKDIR}
echo "Running on: " 
cat ${PBS_NODEFILE}
cat $PBS_NODEFILE > machines.list
echo "Program Output begins: "
./mcpi.exe 1000000 2
