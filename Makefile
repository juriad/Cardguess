.PHONY: all initial cardguess clean 

all: initial cardguess Cardguess.pdf

initial:
	${MAKE} -C initial

cardguess:
	cabal build

clean:
	${MAKE} -C initial clean
	cabal clean
	rm -f *.aux *.out *.log Cardguess.pdf

Cardguess.pdf:
	pdflatex Cardguess.tex
