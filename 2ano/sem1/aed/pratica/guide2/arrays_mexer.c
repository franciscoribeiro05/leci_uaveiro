#include<stdio.h>
#include<ctype.h>
#include<assert.h>
#include <stdlib.h>

// Display the contents of array a with n elements
// Pre-Conditions: a != NULL and n > 0
// Example of produced output: Array = [ 1.00, 2.00, 3.00 ]
void DisplayArray(double* a, size_t n) {

    assert (a != NULL);
    assert (n > 0);

    printf("Array = [ ");
    for(size_t i = 0;i< n;i++){
        printf("%f",a[i]);
        if(i<n-1){
            printf(",");
        }
    }

    printf("]");

}

// Read the number of elements, allocate the array and read its elements
// Condition: number of elements > 0
// Pre-Condition: size_p != NULL
// Return NULL if memory allocation fails
// Set *size_p to ZERO if memory allocation fails
double* ReadArray(size_t* size_p) {
    assert(size_p > 0);
    assert(size_p != NULL);

    double *array = (double*)malloc(*size_p * sizeof(double));

    if (array == NULL) {
        *size_p = 0; 
        return NULL; 
    }

    for (size_t i = 0; i < *size_p; i++) {
        printf("Digite o valor para o elemento %zu: ", i + 1);
        scanf("%lf", &array[i]);  // Lê cada elemento do tipo double
    }

    return array;
}



// Allocate and return a new array with (size_1 + size_2) elements
// which stores the elements of array_1 followed by the elements of array_2
// Pre-Conditions: array_1 != NULL and array_2 != NULL
// Pre-Conditions: size_1 > 0 and size_2 > 0
// Return NULL if memory allocation fails


double* Append(double* array_1, size_t size_1, double* array_2, size_t size_2){

    assert(array_1 != NULL && array_2 != NULL);
    assert(size_1 > 0 && size_2 > 0);

    double *my_array = (double*)malloc((size_1 + size_2) * sizeof(double));

    if(my_array == NULL){
        return NULL;
    }


    for (size_t i = 0; i < size_1;i++){
        my_array[i] = array_1[i];
    }

    for(size_t i = 0; i< size_2;i++){
        my_array[size_1 + i] = array_2[i];
    }

    return my_array;


}


// Test example:
/*Array = [ 1.00, 2.00, 3.00 ]
Array = [ 4.00, 5.00, 6.00, 7.00 ]
Array = [ 1.00, 2.00, 3.00, 4.00, 5.00, 6.00, 7.00 ]*/

int main(void){


    size_t read_size = 3;
    //size_t *reader_size = read_size;
    double array[3] = {1,2,3};
    double array2[4] = {4,5,6,7};
    double *pointer = array;
    double *pointer2 = array2;

    DisplayArray(pointer,3);

    DisplayArray(ReadArray(&read_size),3);

    DisplayArray(Append(pointer,3,pointer2,4),7);


    return 0;
}