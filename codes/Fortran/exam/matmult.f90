program matmult
	!$ use omp_lib
	implicit none
	integer :: i,ii,j,jj,k,kk,n,s
	integer(kind=8) :: tclock1,tclock2,clock_rate
	character(len=32) :: arg
	real(kind=8) :: elapsed_time
	real (kind=8), allocatable, dimension(:,:) :: a,b,c

	call get_command_argument(1, arg)
    read(arg , *) n
    print*, "n supplied = ", n

    allocate(a(n,n),b(n,n),c(n,n))
    a=2.d0
    b=3.d0
    c=0.d0
    s=n/2
    call system_clock(tclock1)
	
	do kk=1,n,s
	  do ii=1,n,s	
	    do jj=1,n,s
	      do j=jj,jj+s-1	
		    do i=ii,ii+s-1	
			  do k=kk,kk+s-1	
				c(i,j)=c(i,j)+a(i,k)*b(k,j)
			  enddo	
			enddo
		  enddo  	
		enddo
	  enddo	
	enddo
	call system_clock(tclock2, clock_rate)
	elapsed_time = float(tclock2 - tclock1) / float(clock_rate)
	print*, "Elapsed time = ", elapsed_time, "sec"

	print*, "c matrix "
	do i=1,n
		print *, c(i,:)
	enddo


	deallocate(a,b)

end program matmult
