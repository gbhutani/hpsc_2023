program print_program
  use omp_lib
  implicit none
  !$ call omp_set_num_threads(4)
  !$omp parallel 
    !$ print*, "This is a parallel print statement"
    print*, "This is a serial print statement"
  !$omp end parallel
end program print_program
