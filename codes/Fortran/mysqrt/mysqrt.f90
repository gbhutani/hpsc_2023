
program mysqrt

    implicit none                  
    real (kind=8) :: x, y, sqrt_true
    real (kind=8), external :: sqrtNT

    x = 2.0
    sqrt_true = sqrt(x)
    y = sqrtNT(x)   ! uses function below
    print *, "x = ",x
    print *, "sqrt_true  = ",sqrt_true
    print *, "sqrtNT = ",y
    print *, "error     = ",y - sqrt_true

end program mysqrt

!==========================
function sqrtNT(x)
!==========================
    implicit none

    ! function arguments:
    real (kind=8), intent(in) :: x
    real (kind=8) :: sqrtNT

    ! local variables:
    real (kind=8) :: s, s_prev, delta_s, tol
    integer :: k, kmax


    kmax=100
    s = 1.
    tol=1.d-14
    

    do k=1,kmax
        s_prev=s
        s = 0.5*(s+x/s)
        delta_s=s-s_prev
        if ((abs(delta_s/x)) < tol) then 
            exit
        endif
    enddo
     sqrtNT = s  ! this is the value returned
end function sqrtNT

! Exercise: write a subroutine sqrtNT_sub that returns 
! two arguments - sqrt and the number of iterations taken to stop.
! The variables kmax, s_init and tol should also be passed
! to the subroutine
! Include debug flag too just like in the Python code

