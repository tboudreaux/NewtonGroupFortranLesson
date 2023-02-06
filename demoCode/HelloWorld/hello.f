C This is one of the most basic programs you can write with fortran
C A few things to note about this

C First Note how the comment lines start with a charecter in the first
C column
C Technically this can be any charecter; however, generally you will see
C either a C or a ! used to denote a comment. However, again, any
C comment in the first column of a program will make that line a comment

C Next, note how columns 1-7 are empty in the program below. We alreay
C know why column 1 is empty (otherwise the line in question would be a
C comment). Lines 2,3,4,5, and 6 are empty as those are reserved for
C tags. 
C tags let you mark a line in a program with a particular number and
C then reference/jump to that line in the code by calling that tag
C Finally, line 7 is empty as fortran imposes a strict line length limit
C at 74 charecters long. 
C Any lines that extend past the 74th column are invalid. What do you do
C if you want to write some code that takes more charecters then? No
C fear! Fortran has a solution. Place any charecter in column 7 of a
C line and then that line is a contiuation of the previous line

C We will have examples of all of these in other programs, but for now
C thats why there are 7 blank columns on each code line of this program

C The next key thing is the program statement. when you compile fortran
C code you have a single program which will run. The compiler will look
C for it and designate it as thing which runs when you call the
C executable. If you have worked with C this is equivilent to the main
C function (though you may name the program whatever you like). In this
C case I have named the program hello.
       program hello ! This is an inline comment
              implicit none ! fotrtran is strongly typed meaning all
C                             variables must have a type assosiated to
C                             them (int, float, double, char, etc...).
C                             However, old fortran code would often
C                             automatically assign types to variables
C                             based on their starting letter (so any
C                             variable starting with the letter l for
C                             example would be assigned the type
C                             logical). This is EXTREMLY bad practice so
C                             it is now standard to use implicit none in
C                             all fortran code to prevent any types from
C                             being implicitly assigned
             write(*,*)"Hello, World!" ! write is the equivilent of the
C                                        print statement. Its syntax is
C                                        somewhat different though. As
C                                        you see write takes two
C                                        "arguments". The first is the
C                                        "unit identifier" and the
C                                        second is the "format
C                                        identifier". We will go more
C                                        into what these are in other
C                                        code; however, for the sake of
C                                        this know that * represents
C                                        somewhat of a default for both
C                                        values. If you just want to
C                                        print something to the terminal
C                                        quickly write(*,*) will get
C                                        done what you want to get done.
      end program hello ! The program must be ended
