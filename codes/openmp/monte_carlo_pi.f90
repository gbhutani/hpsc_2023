program monte_carlo_pi

    implicit none
    integer :: i,inside,num_points
    real(kind=8) :: x,y,dist,estimate_pi
    character(len=32) :: arg
    
    ! read num_points as command line argument.
    ! Run the code as: './a.out 100'
    call get_command_argument(1, arg)
    read(arg , *) num_points

    !print *, num_points
    inside = 0    
    do i=1,num_points

        call random_number(x)
        x = x-0.5
        !print *, "x=", x
        call random_number(y)
        y = y-0.5
        !print *, "y=", y

        dist=sqrt(x**2 + y**2)
        !print *, "dist=", dist
            
        if (dist < 0.5) then
            inside = inside + 1
            !print *, "i=", i, "inside=",inside
        endif

    enddo
    print *, inside, "points fall inside the circle out of", num_points, "points"
            
    estimate_pi = (inside * 4.d0) / num_points
    print *, "estimate_pi=",estimate_pi

end program monte_carlo_pi

