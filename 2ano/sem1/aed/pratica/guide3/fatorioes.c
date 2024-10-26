#include<stdio.h>
#include<math.h>
#include<string.h>
#include<stdlib.h>


int factorial(int n) {
    if (n == 0) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

int main(void){

    char string[7];
    char *string_pont = string;

    for(int i = 0;i < 1000000;i++){
        int resultado = 0;
        sprintf(string,"%d",i);

        for(size_t j = 0; j< strlen(string);j++){
            resultado += factorial(string[j] - '0');
        }
        if(resultado == i){
            printf("%d\n",i);
        }
    }


    return 0;
}