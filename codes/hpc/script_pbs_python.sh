#!/bin/bash 
#PBS -q serial
#PBS -o out.o
#PBS -e out.e
#PBS -N demo_me522_python
#PBS -l nodes=n115.cluster.iitmandi.ac.in:ppn=1
#PBS -V

cd ${PBS_O_WORKDIR}
echo "Running on: " 
cat ${PBS_NODEFILE}
cat $PBS_NODEFILE > machines.list
echo "Program Output begins: "
source ~/virtualenvs/testenv/bin/activate
python python_script.py
