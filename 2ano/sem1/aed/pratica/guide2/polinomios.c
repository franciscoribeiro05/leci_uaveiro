#include<stdio.h>
#include<assert.h>
#include<math.h>

// The coefficients of a degree n polynomial
// are stored in an array p of size (n + 1)
// p[0] is the coefficient of the largest degree term
// p[n] is the coefficient of the zero-degree term
// Display a polynomial



// Pre-Conditions: coef != NULL and degree >= 0
// Example of produced output:
// Pol(x) = 1.000000 * x^2 + 4.000000 * x^1 + 1.000000
#include <stdio.h>
#include <assert.h>

// Função para exibir o polinômio
void DisplayPol(double* coef, size_t degree) {
    assert(coef != NULL);
    assert(degree >= 0);

    printf("Pol(x) = ");
    for (size_t i = 0; i <= degree; i++) {
        int count = degree - i;

        // Exibe o coeficiente
        printf("%lf", coef[i]);

        // Exibe o termo com x, exceto para a constante (x^0)
        if (count > 0) {
            printf(" * x^%d", count);
        }

        // Adiciona o '+' para separar os termos, exceto no último termo
        if (i < degree) {
            printf(" + ");
        }
    }
    printf("\n");
}







// Compute the value of a polynomial using Horner’s method:
// Pre-Conditions: coef != NULL and degree >= 0



double ComputePol(double* coef, size_t degree, double x) {
    double result;
    for(size_t i = 0; i<=degree;i++){
        int count = degree-i;
        result += coef[i] * pow(x,count);
    }
    return result;
}



// Test example:
// Pol(x) = 1.000000 * x^2 + 4.000000 * x^1 + 1.000000
// Pol(2.000000) = 13.000000




// Compute the real roots, if any, of a second-degree polynomial
// Pre-Conditions: coef != NULL and degree == 2 and coef[0] != 0
// Pre-Conditions: root_1 != NULL and root_2 != NULL
// Return values:
//0 -> no real roots
//
//1 -> 1 real root with multiplicity 2
//
//2 -> 2 distinct real roots
// The computed root values are returned via the root_1 and root_2
// pointer arguments
// Assign 0.0 to the *root_1 and *root_2 if there are no real roots
//GetRealRoots(double* coef, size_t degree, double* root_1, double* root_2)
//{}





int main(void) {
    // Definindo um array de coeficientes para o polinômio
    double array[5] = {3, 4, 2, 1, 0}; // Representa 3x^4 + 4x^3 + 2x^2 + 1x^1 + 0x^0
    double *pont = array;  // Ponteiro para o array

    // Exibe o polinômio de grau 4
    DisplayPol(pont, 4); // O grau é 4, pois temos 5 coeficientes (grau + 1)
    double compute = ComputePol(pont,4,2);
    printf("%lf",compute);
    return 0;
}