.PHONY: all initial cardguess clean 

all: initial cardguess

initial:
	${MAKE} -C initial

cardguess:
	cabal build

clean:
	${MAKE} -C initial clean
	cabal clean
