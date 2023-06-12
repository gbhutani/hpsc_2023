program sum_array
	!$ use omp_lib
	implicit none
	integer :: i, n, nthreads, sum_arr

	print*, "Enter n: "
	read*, n
	!$ print*, "Enter nthreads: "
	!$ read*, nthreads
	!$ call omp_set_num_threads(nthreads)

	sum_arr = 0
	!$omp parallel do reduction(+:sum_arr) if(n>200)
	do i=1,n
		sum_arr = sum_arr + i
	enddo
	!$omp end parallel do

	print*, "Final sum = ", sum_arr

end program sum_array
