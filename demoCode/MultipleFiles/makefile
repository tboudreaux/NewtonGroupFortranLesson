FC="gfortran"
FFLAGS="-O2"
NAME="executable"

default: all

# Here we link the object files of main and sub together
all: main sub
	$(FC) -o $(NAME) main.o sub.o

# the -c flag tells the compiler to make an object file not an executable
main:
	$(FC) $(FFLAGS) -c main.f

sub:
	$(FC) $(FFLAGS) -c sub.f

clean:
	rm *.o
	rm $(NAME)
