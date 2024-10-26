#include<stdio.h>

int func1(size_t n){
    if(n == 1){
        return n;
    }

    return func1(n/2) + n;
}


int func2(size_t n){
    if(n == 1){
        return n;
    }

    return func2(n/2) + func2((n + 1)/2) + n;
}

int func3(size_t n){
    if(n == 1){
        return n;
    }

    if(n%2 == 0){
        return 2* func3(n/2);
    }
    else{
        return func3(n/2) + func3((n + 1)/2) + n;
    } 

}

unsigned int cout1 = 0;
unsigned int cout2 = 0;
unsigned int cout3 = 0;



int main(){

     for (size_t n = 1; n <= 15; n++) {
        // Calcular e imprimir para f1
        int k1 = func1(n);
        cout1++;
        printf("f1: cout1 = %u, n = %zu, k1 = %d\n", cout1, n, k1);

        // Calcular e imprimir para f2
        int k2 = func2(n);
        cout2++;
        printf("f2: cout2 = %u, n = %zu, k2 = %d\n", cout2, n, k2);

        // Calcular e imprimir para f3
        int k3 = func3(n);
        cout3++;
        printf("f3: cout3 = %u, n = %zu, k3 = %d\n", cout3, n, k3);

        // Separador para cada iteração de n
        printf("--------------------------\n");

    }
    return 0;

}