Lets build some fortran code!

In the other directories there are makefiles which you can look through.

However, here we will build manually.

gfortran is the compiler which you all have installed. If you want to learn
about it you can always type

```bash
$ man gfortran
```
into a shell to pull up the manual

However, here we only need a simple command

```bash
gfortran hello.f -o hello.out
```

this will compile the fortran program hello.f into the executable hello.out

you can then run hello.out by typing into your shell

```bash
./hello.out
```

Note that a program you compile on your compulter should only be expected to
work on your computer (though there are ways around this). Therfore if you want
to share a program with someone you should share your source code and build
system (makefiles or compile commands) so that they can build it on their
computer.
