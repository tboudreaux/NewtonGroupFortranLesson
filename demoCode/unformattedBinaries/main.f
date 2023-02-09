      PROGRAM main
       implicit none
       integer :: i, j

       i = 7

       write(*,*) "I is ", i
C Here we see that we can open a file with a name and give it a stream
C tag
       open(31, FILE="i.bin", form="unformatted")
       write(31) i ! for unformatted files there is no format tag used
C Also not how you must close the file!
       close(31)

       open(32, FILE="i.bin", form="unformatted", action="read")
       read(32) j
       write(*,*) "Read from file ", j


      END
