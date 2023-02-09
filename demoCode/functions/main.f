       PROGRAM main
         implicit none
         REAL *8 test1, test2, res, sub
         test1 = 10.d0 
         test2 = 11.d0
         write(*,*)test1, test2
         res = sub(test1,test2)
         write(*,*)res
       END

C Here we see a function. Note how we have to define what the output
C type of the function is! Also note how if we dont say what is returned
C the compiler will assume that the variable with the same name as the
C function should be returned.
       double precision FUNCTION sub(a, b)
          implicit none
          REAL *8 a
          REAL *8 b 
          REAL *8 res
          write(*,*)"HERE in function in main"

          res = a + b
          sub = res
          
          return 

       END
