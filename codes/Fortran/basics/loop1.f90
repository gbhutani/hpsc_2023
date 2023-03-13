program loop1
  implicit none
  integer, parameter :: n = 10000  
  real (kind=8), dimension(n) :: x, y  
  integer :: i

  do i=1,n
    x(i) = 3.d0 * i  
  enddo

  do i=1,n
    y(i) = 2.d0 * x(i)  
  enddo

  print *, "Last y computed: ", y(n)  
  
end program loop1

