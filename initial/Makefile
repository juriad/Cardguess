.PHONY: all cleanTemp clean

CFLAGS=--std=gnu99 -O2

all: initial cleanTemp

initial: feedback.o common.o

cleanTemp:
	rm -f *.o

clean:
	rm -f *.o
	rm -f initial
