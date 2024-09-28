#include<stdio.h>


int Permute(int* a,int* b,int* c){

    int temp = *a;
    *a = *c;
    *c = *b;
    *b = temp;

    return 0;

}

int main(void){
    int x = 1;
    int y = 2;
    int z = 3;

    printf("Valores antes da permutacao:x = %d, y = %d, z = %d\n", x, y, z);

    Permute(&x,&y,&z);

    printf("Valores depois da permutação: x = %d, y = %d, z = %d\n", x, y, z);

    return 0;


}