       PROGRAM main
               IMPLICIT NONE
               REAL*8 R, AREA
               R = 2
               CALL CAREA(R, AREA) ! In order to use subroutines you must CALL
                                   ! them!
               WRITE(*,*)"Circle of Radius: ", R, " has area:", AREA
       END
