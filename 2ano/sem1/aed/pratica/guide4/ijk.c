#include<stdio.h>

int verificarProreiedadeijk(int*a,int size){

    int count = 0;

    for(size_t k = 0;k<size;k++){
        for(size_t j = 0;j<k;j++){
            for(size_t i = 0; i<j;i++){
                int valor_ij = a[i] + a[j];
                if(valor_ij == a[k]){
                    count++;
                }
            }
        }
    }

    return count;
}

int main(){

    int array_inteiros[] = {1,2,3,4,5,6,7,8,9,10};

    int *a = array_inteiros;

    int return_value = verificarProreiedadeijk(a,10);

    printf("%d\n",return_value);

    return 0;
}

