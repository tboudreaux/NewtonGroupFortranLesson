C Large code bases are almost always split into many files. Its often
C important to understand how this works and how these files interact.
C Here we have a very simple program which is split accross a few files 

C Note how we dont have any thing equivilent to an import statement. The
C merging of multiple files (be it in fortran or C) is done through a
C process called linking. This happens at compile time. Essentially all
C files are compiled to an intermediate stage known as object files (.o
C files). All the object files are then merged into a single
C exectutable. See the makefile for more details about how this is done
       PROGRAM main
        implicit none
        REAL :: output
        CALL subTest(4, output)
        WRITE(*, *)output
       END
