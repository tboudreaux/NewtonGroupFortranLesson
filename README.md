# Fortran (basic) Introduction
Welcome to Fortran, whether you ended up here intentionally or my mistake you
have my condolences.

Actually, the above is a bit of a lie. Fortran is, in fact, a very nice
language. Much of the baggage which is assosiated with Fortran is an artifact
of the extensive use of extremly old versions (FORTRAN 77 in particular) which
are still pervasive in astronomy. We will cover a little 77 for purposes of
being able to read old code; however, the primary focus of this will be modern
versions of the language.


## Installation
At a very basic level --- unlike Python, matlab, or Julia --- Fortran is a
compiled language. That means instead of writing and running your code you need
to write, compile, and the run your code. Therefore when we talk about installing
Fortran we really mean that you need to install a Fortran compiler. 

There are quite a few of these; however, many are commercial and cost money
(such as intel's iFort compiler). We will instead make use of gfortran, the GNU
fortran compiler. If you have ever used gcc or g++ for C/C++ code before, its
very similar. 

### Linux
Installing gfortran on linux is super simple! Use whatever package manager your
distro comes with to install

#### Arch/Manjaro
```bash
sudo pacman -Syu gfortran
```

#### Debian/Ubuntu
```bash
sudo apt install gfortran
```

#### Fedora/RHEL
```bash
rpm install gfortran
```

### Mac
Installation of gfortran on mac is somewhat trickier and the steps can
change depending on if you use a mac with an x86 arcitecture or one with an ARM
arcitecture. However, there is a way to make this super easy, and that's by using
the OSX package manager called Homebrew.

#### Install via Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install gcc
```

The first command there will install homebrew to your computer and the second
will install gcc using homebrew. This will take care of selecting the correct
version for the arcitecture of your computer.

#### Install via Conda
Assuming you have anaconda installed and intentialized you can also install
gfortran using the conda package manager

```bash
conda install gfortran
```

Note that this will install gofrtran only in the enviroment you are currently
sourced to
