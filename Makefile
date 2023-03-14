all: main

main: main.o hello.o
	gcc -Wall -o main main.o hello.o

main.o: main.c
	gcc -Wall -c main.c

hello.o: hello.c
	gcc -Wall -c hello.c

clean:
	rm main *.o

.PHONY: all clean