# Description
Each of these folders contains some code to demo a concept in Fortran.


C-Fortran-Interface:
	Showing how you can interface C code with fortran and vis-versa. This is
	useful if you already have a program written in one language and you want
	to use it from another (or write a python interface to a fortran program as
	the python API is all C)

circleArea:
	A basic demo showing some input and output
	
commandLineArgs:
	A demo showing how to read command line arguments in Fortran.

commonBlocks:
	Fortran has an *awful* construct known as common blocks. In a lot of ways
	these are like global variables and should similarly be avoided. However,
	they are very common in legacy code. This demo shows some of there
	properties

DataReservedWord:
	the DATA keyword in fortran is a useful way to load up variables and arrays
	with values. This demo shows off the basics of using it.

DoLoops:
	Do Loops are the Fortran equivilent of for loops and are therefore an
	important flow control constrct to master. 

HelloWorld:
	Very basic introduction to Fortran. Probably a good place to start!

implicitTyping:
	Much like common blocks fortran has an *awful* thing called implicit typing.
	You should never use it; however, legacy code will, so this demo shows off
	some of its properties.

MultipleFiles:
	This demo shows how to split code betweem multiple files and then compile
	them together.

NamelistFiles:
	A lot of Fortran code will make use of what are called Namelist Files. Think
	of these like configuration files which store values for variables that can
	be read in by the program. This demo shows a basic version of that.

OrderOfOperations:
	The order of operations in Fortran is what you would expect; however, a good
	thing is always to proove that to oneself. THis demo does that.

StringFormating:
	One of Fortran's historical strenghts was how easy it made it to handle string
	data when compared to other language such as C and COBOL. This demo shows
	off the basics of Fortran format strings.

unformattedBinaries:
	Often you will find the output of Fortran code stored in unformatted
	Binaries. If you don't know how these can be frustraiting to read in. This
	demo explains what they are and provides example fortran and python code to
	injest them.
