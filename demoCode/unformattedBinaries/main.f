      PROGRAM main
       integer i

       i = 7

       write(*,*) "I is ", i

       open(31, form="unformatted")
       write(31) i
       close(31)
      END
