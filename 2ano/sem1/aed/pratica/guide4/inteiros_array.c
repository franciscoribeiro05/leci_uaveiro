#include<stdio.h>

int VerificarPropriedade(int*a,int size){

    int count = 0;

    for(size_t i = 1; i<size-1;i++){
       int soma =  a[i -1] + a[i+1];
       if(a[i] == soma){
        count++;
       }
    }

    return count;
}


int main(void){

    int array_inteiros[] = {0,0,0,0,0,0,0,0,0,0};   
    
    int* a = array_inteiros;
    
    int print_value = VerificarPropriedade(a, 10);

    printf("%d\n",print_value);

    return 0;
}


// Algoritmo Sistemático

