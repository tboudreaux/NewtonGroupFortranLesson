C This program deals with some numeric data along with user input. One
C key thing to point out is that with all fortran programs you must
C declare your variable datatypes first! Thats why real and parameter
C (which is useful for defining constants) must come before anything
C else in the program. If you tried to have some statement before them,
C such as the read statement which grabs user input, the compiler would
C yell at you

C Also note how read uses (*,*) just like write. 
      program circle
             implicit none
             real r, area, pi
             parameter(pi = 3.14159)
             write(*,*) 'Give radius r: '
             read(*,*) r
             area = pi*r*r
             write(*,*) 'Area = ', area
      end program circle
