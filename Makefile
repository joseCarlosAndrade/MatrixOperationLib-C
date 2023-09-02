C_ARGS=-Wall -std=c99 -march=native

all: tests/main.c src/initialization.c src/operations.c include/matrix_operations.h
	mkdir -p bin
	gcc tests/main.c src/initialization.c src/operations.c -o bin/main $(C_ARGS)

test: # run the generated test code
	./bin/main

# separated .o files
obj: main.o initialization.o operations.o
	mkdir -p bin
	gcc bin/*.o -o bin/main 

main.o: tests/main.c include/matrix_operations.h
	gcc tests/main.c -c $(C_ARGS) -o bin/main.o

initialization.o: src/initialization.c include/matrix_operations.h
	gcc src/initialization.c -c $(C_ARGS) -o bin/initialization.o

operations.o: src/operations.c include/matrix_operations.h
	gcc src/operations.c -c $(C_ARGS) -o bin/operations.o

clean:
	rm bin/main
	rm bin/*.o
