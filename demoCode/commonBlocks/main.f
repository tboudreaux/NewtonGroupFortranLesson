C Common Block are awful and should be avoided whenever possible.
C However, a lot of older code makes heavy use of them so it is
C important to understand their basics.
C
C Think of common blcosk like global data containers. They store the
C same data everywhere. They come with all the same downsides global
C variables do as well.

C Here we define a common block in main called MAINBLOCK which has 3 
C entries within it, MA, MB, and MC. Each of these can be used as a
C variable in any namespace (program, function, or subroutine) where 
C the common block is broght into.

C We then use the data keyword to assign values to each of these
C variables. 

C Note that just like type declerations common and data must come at the
C top of a program
       PROGRAM MAIN
        implicit none
        integer :: MA, MB, MC
        COMMON/MAINBLOCK/MA,MB,MC
        DATA MA/1/, MB/2/, MC/3/
C       Let's check to see that the values we set are actually in there!
        WRITE(*,*)"In Main Program Main Block is",MA,MB,MC
C       Now we call 2 subroutines which will demo the behavior of blocks
C       as we move between namespaces
        CALL SUBA
        CALL SUBB
       END
