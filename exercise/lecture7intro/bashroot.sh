#PBS -j oe 

#specify queue name
#PBS -q serial

#PBS -o out.o
#PBS -e out.e

#specify job name
#PBS -N  exercise2hpsc 

#PBS -l nodes=1:ppn=1
         
#specify time required for job completion
#PBS -l walltime=10:00:00
        
cd ${PBS_O_WORKDIR}
echo "Running on: " 
cat ${PBS_NODEFILE}
cat ${PBS_NODEFILE} > machines.list

echo 
echo "Program Output begins: " 

source ~/virtualenvs/testenv/bin/activate
python
for i in {2..2000..2}
do
        python root.py $i >>results.txt
done

