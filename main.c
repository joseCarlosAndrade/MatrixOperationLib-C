#include"headers/matrix_operations.h"


/* Main for exmple using all operations.*/
int main(void) {
    // creating matrix instance
    Matrix2Df *matrix_a = create_matrix(3, 2);
    Matrix2Df *matrix_b = create_matrix(2, 3);

    // filling matrix from float vector
    // float buffer[6] = {1,2,3,4,5,6};
    // fill_matrix(matrix, buffer);

    // filling matrix from input file
    fill_matrix_from_file(matrix_a, "inputs/input_a.txt");
    fill_matrix_from_file(matrix_b, "inputs/input_b.txt");

    printf("Matrices a and b: \n");
    print_matrix(matrix_a);
    print_matrix(matrix_b);

    // Matrix2Df * matrix_sum = add_matrix(matrix_a, matrix_b);
    Matrix2Df * matrix_mult = mult_matrix(matrix_a, matrix_b);
    // print_matrix(matrix_sum);
    printf("Multiplication result: \n");
    print_matrix(matrix_mult);

    printf("Multiplying by -1: \n");
    matrix_mult = scalar_mult(matrix_mult, -1);
    print_matrix(matrix_mult);

    // getting the transpose
    printf("Getting the transpose: \n");
    Matrix2Df * transpose = create_matrix(3, 3);
    transpose = get_transposed(matrix_mult);
    print_matrix(transpose);

    // this is a must call
    close_matrix(matrix_a);
    close_matrix(matrix_b);
    close_matrix(matrix_mult);
    close_matrix(transpose);

}