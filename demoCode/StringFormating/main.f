C Here we see the acutal use of the (*,*) from before. Let's dive into
C that
C Write takes 2 arguments, a stream and a fortmat tag. The first
C argument is the stream and the second is the format tag.
C The stream is where WRITE will write to. * corresponds to standard
C output, what you see in your termina. However, this can also be the
C tag of a file. In that case write will write to a file! 
C The format tag is a line tag poiting to a format identifier. These let
C you specify much more complex output styles (such as justification,
C presicion, base, etc...)
       program main
              implicit none
              integer :: i
              real :: f
              f = 9.8E6
              WRITE(*,10) f
 10           FORMAT(1X,1P10E16.8)

C If you dont explicitly open a file before hand but do provide a stream
C tag then fortran will automatically generate a "unit" file. This is a
C file with the name format of fort.n where n is the stream tag.
              WRITE(7,*) "This is written to the 7th unit file!"

              WRITE(7,20) f
 20           FORMAT("F has the value: ", E16.8)
       end program main
