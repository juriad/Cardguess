all: initial cardguess

initial:
	gcc -O2 --std=gnu99 initial.c -o initial

cardguess:
	${MAKE} -C src

clean:
	rm -f initial
	${MAKE} -C src clean
