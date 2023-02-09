C      Here is an example of a subroutine in fortran. 
C      technically these are different from functions; though in many 
C      ways they fill the same niche. That is they allow for modular
C      code
C      The key differece between a subroutine and a function is that a
C      subroutine does not explicitly return a value. Therefore, you
C      must extact values from the subroutine using *pass by reference*
C      
C      Pass by references refers to the way that variables are moved
C      around internally. One way would be to pass the value in memory
C      however another way would be to pass the location in memory where
C      that variable is stored. This is what fortran does *always*. This
C      means that when you modify a variable passed to a function or
C      subroutine you are modifing the same version of that variable
C      that exists in the main program. So here we pass area into this
C      subroutine and then set its value. When we latter reference it in
C      the main program it'll have the value we set here!
       SUBROUTINE CAREA(R, AREA)
        implicit none
        REAL*8 :: R,AREA,PI ! Note how we have to define the datatype of each
                      ! variable which we use.
        PARAMETER(PI=3.1415926) ! PARAMETER is useful for setting
                                ! constants which we will not
                                ! need to change!

C       The final thing which this file points out is how in fortran we
C       need to seperate our code from our variable declerations. In any
C       program, subroutine, or function you must start by defineing
C       your data types then data if you have it. Only then can you
C       write statements.
        AREA = PI*R*R
       END

