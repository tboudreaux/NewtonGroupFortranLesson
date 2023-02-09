C Here we see how to define a string in fortran. Just like in C (though
C unlike in python) fortran treats strings as arrays of individual
C characters. This means that every string is a fixed length which you
C must predefine. Here we assume that we wont have more than 32
C characters per argument
       program main
              implicit none
              integer :: i
              character(32) :: arg
              write(*,*)"Hello, World!"
              do i = 1, iargc() ! a do loop is like a C style for loop!
                     call getarg(i, arg) ! this is a built in subroutine
                     write(*,*) arg
              end do

       end program main
