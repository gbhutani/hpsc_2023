program test1
  use omp_lib
  implicit none
  integer, parameter :: n = 2
  integer :: i 
  !$ call omp_set_num_threads(2)
  !$omp parallel 
  do i = 1, n
    print*, "Hello world"
  enddo
  !$omp end parallel
end program test1
