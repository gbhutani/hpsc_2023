
OBJECTS = functions.o quadrature.o main.o
FFLAGS = 
NUM_PROCS ?= 4  # default if not specified on command line or env variable
mpif90 = /Users/bhutani/opt/usr/local/bin/mpif90
mpiexec = /Users/bhutani/opt/usr/local/bin/mpiexec

.PHONY: main clean 

main: main.exe
	$(mpiexec) -n $(NUM_PROCS) --oversubscribe main.exe

main.exe: $(OBJECTS)
	$(mpif90) $(FFLAGS) $(OBJECTS) -o main.exe

%.o : %.f90
	$(mpif90) $(FFLAGS) -c  $< 

clean:
	rm -f *.o *.exe *.mod

