.PHONY: all initial cardguess clean 

all: initial cardguess

initial:
	${MAKE} -C innitial

cardguess:
	${MAKE} -C src

clean:
	${MAKE} -C initial clean
	${MAKE} -C src clean
