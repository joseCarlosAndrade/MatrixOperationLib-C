# MatrixOperationLib for C language (for floats only (yet))

A simple C library that handles flaot matrices creation, manipulation and some basic operation.
Check the tests section to get an overview of all the functions so far.

----

## Compiling a simple test

You can manually compile and link the src files `operations.c`, `initialization.c` and the header `matrix_operations.c`, but you can easily compile with one line command using make as an example for your project:

```bash
make all # compiles the test program located at `tests/main.c`

make test # runs the example program

make obj # compiles by first generating .o files (it may be useful)

make clean # cleans the compiled generated files
```

----

## Usage

An example of creating and multiplying two matrices, one generated from a float array and the other from a file containing all the matrix values. To get a proper usage of everything, you can compile and run the `tests/main.c`.

```c
    Matrix2Df *matrix_a = create_matrix(3, 2);
    Matrix2Df *matrix_b = create_matrix(2, 3);

    float buffer[6] = {1.0, 1.0, 2.0, 2.0, 3.0, 3.0};

    fill_matrix(matrix_a, buffer);
    fill_matrix_from_file(matrix_b, "path_to_file_for_matrix_b");

    print_matrix(matrix_a);
    print_matrix(matrix_b);

    Matrix2Df * matrix_mult = mult_matrix(matrix_a, matrix_b);
    print_matrix(matrix_mult);
```

Here is the output:

```console
    1.000000 1.000000 
    2.000000 2.000000 
    3.000000 3.000000 

    1.000000 1.000000 1.000000 
    2.000000 2.000000 2.000000

    3.000000 3.000000 3.000000 
    6.000000 6.000000 6.000000 
    9.000000 9.000000 9.000000 
```
