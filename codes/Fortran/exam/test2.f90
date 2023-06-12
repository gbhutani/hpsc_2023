program test2   
   use omp_lib
   implicit none
   integer :: thread_num
   !$ call omp_set_num_threads(4)
   !$omp parallel 
   !$omp critical
   !$ thread_num = omp_get_thread_num()    
   !$ print *, thread_num 
   !$omp end critical
   !$omp end parallel 
end program test2
