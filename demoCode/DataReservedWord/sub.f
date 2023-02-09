       SUBROUTINE SUB(A,B,ARR)
              implicit none
               REAL, DIMENSION(4) :: ARR
               REAL :: A, B
               LOGICAL LT,LA
               ARR = (/0,1,2,3/)    
               LT =.TRUE.
               LA = .FALSE.
               WRITE(*,*)"SUB CALLED"
       END
