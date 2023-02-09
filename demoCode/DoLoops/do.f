C DO LOOPS are very similar to C style for loops. That is they repeat an
C action n times incrimenting a counter until it reaches a limit. Note
C that this is very different from a python style for loop (which is
C really a for each loop) which incriments over a data structure. 

C Do loops also demonstrate line tags! When a do loop complets, if a
C line tag is specified it will jump to that line tag (instead of simply
C going to the next line in the program)

C In this program we also see an if statement. Note how logical
C comparisons are made using .STAT. for example to check for equality
C one might use IF(X.EQ.7) THEN which is equivilent to the python code
C if x==7:

C Also note how IF statement must end with an END IF
       PROGRAM MAIN
       IMPLICIT NONE
       INTEGER :: I, J

       J = 0
       DO 40 I=1,7 ! here the line tag is 40, so when the loop complets
         WRITE(*,*)I
 40    CONTINUE
 50    WRITE(*,*) "THIS LINE WILL RUN WHEN 50 is jumped to"

         IF(J.LE.10) THEN
                J = J + 1
                GOTO 50
         END IF
       WRITE(*,*)"END LINE"

C Line tags have to start in the second column of a file and can be up
C to 4 numbers long (up to 9999). Each line tag must be unique in the
C program, function, or subroutine its in.

C You can also see here GOTO which will jump to a specified line tag.
C You should not write code with GOTO as it leads to a spagetii mess;
C however, a lot of old code uses it so it is impportant to be familiar
C with it
       END
