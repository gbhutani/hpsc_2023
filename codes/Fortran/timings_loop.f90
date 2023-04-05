! Try compiling with different levels of optimization, e.g. -O3


program timings

    implicit none
    integer, parameter :: m = 4097, n = 10000  
    real(kind=8), dimension(m,n) :: a
    integer(kind=8) :: tclock1, tclock2, clock_rate
    real(kind=8) :: t1,t2,elapsed_time

    integer :: i,j,k,itest

    call cpu_time(t1)   ! start cpu timer

    ! Row-wise looping
    call system_clock(tclock1)
    do i = 1,m
        do j=1,n
            a(i,j) = 0.d0  
        enddo
    enddo
    call system_clock(tclock2, clock_rate)
    elapsed_time = float(tclock2 - tclock1) / float(clock_rate)
    print 11, elapsed_time, m
    11 format("Elapsed time for row-wise looping = ",f18.14, " seconds. m = ",i5)
!    print *, tclock1, tclock2, clock_rate
    call cpu_time(t2)   ! end cpu timer
        print 10, t2-t1
10 format("CPU time = ",f12.8, " seconds")

    ! Now column-wise looping
    call system_clock(tclock1)
    do j = 1,n
       do i=1,m
           a(i,j) = 0.d0  
       enddo
    enddo
    call system_clock(tclock2, clock_rate)
    elapsed_time = float(tclock2 - tclock1) / float(clock_rate)
    print 12, elapsed_time
    12 format("Elapsed time for column-wise looping = ",f18.14, " seconds")

end program timings

