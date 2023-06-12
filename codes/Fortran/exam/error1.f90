program parallel_dot_product
  use omp_lib
  implicit none
  integer, parameter :: n = 100000
  integer :: i, thread_num
  real (kind=8) :: a(n), b(n)
  real (kind=8) :: dot_product = 0.0
  !$ call omp_set_num_threads(2)

  ! remove the reduction statement and give as problem in class
  !$omp parallel do reduction (+:dot_product)
  do i = 1, n
    a(i) = i
    b(i) = 2.0*i
    dot_product = dot_product + a(i)*b(i)
  enddo
  !$omp end parallel do

  print*, "The dot product is: ", dot_product
end program parallel_dot_product
