#include<stdio.h>
#include<stdbool.h>

bool verificarPG(double *a,int size){

    if(size<2){
        return false;
    }

    bool return_value = true;
    
    double r = a[1] / a[0];
    for(size_t i = 2;i<size;i++){
        double s_value = a[i-1] * r;
        if(a[i] != s_value){
            return_value = false;
            break;
        }
    }

    return return_value;
}



int main(){

    double array_reais[] = {1,2,4,8,16,32,64,128,256,512};

    double*b = array_reais;

    bool print_value = verificarPG(b,10);

    if (print_value) {
        printf("O array é uma progressão aritmética.\n");
    } else {
        printf("O array não é uma progressão aritmética.\n");
    }

    return 0;
}