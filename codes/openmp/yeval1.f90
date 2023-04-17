program yeval1

	use omp_lib
	implicit none
	integer, parameter :: n = 100000000
	integer :: i, nthreads
	real(kind=8), dimension(n) :: y
	real(kind=8) :: dx, x


	dx = 1.d0 / n

	!$ print *, "Please specify the number of OpenMP threads"
	!$ read *, nthreads
	!$ call omp_set_num_threads(nthreads)
	!$ print *, "Using OpenMP with threads =", nthreads
	
	!$omp parallel do private(x)
	do i=1,n
		x = i*dx	
		y(i) = exp(x)*cos(x)
	enddo
	!$omp end parallel do

	print *, "y vector has been filled with n =", n
end program yeval1