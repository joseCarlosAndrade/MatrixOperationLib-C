C_ARGS=-Wall -std=c99 -march=native

all: main.c src/initialization.c src/operations.c headers/matrix_operations.h
	mkdir -p bin
	gcc main.c src/initialization.c src/operations.c -o bin/main $(C_ARGS)

run: 
	./bin/main

obj: main.o initialization.o operations.o
	mkdir -p bin
	gcc bin/*.o -o bin/main 

main.o: main.c headers/matrix_operations.h
	gcc main.c -c $(C_ARGS) -o bin/main.o

initialization.o: src/initialization.c headers/matrix_operations.h
	gcc src/initialization.c -c $(C_ARGS) -o bin/initialization.o

operations.o: src/operations.c headers/matrix_operations.h
	gcc src/operations.c -c $(C_ARGS) -o bin/operations.o

clean:
	rm bin/main
	rm bin/*.o
