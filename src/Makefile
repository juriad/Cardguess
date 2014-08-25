all: cardguess

cardguess:
	rm -f *.o *.hi
	ghc -Wall -O2 --make Test.hs -o cardguess
	rm -f *.o *.hi

clean:
	rm -f *.o *.hi
	rm -f cardguess
