#include<stdio.h>


int delannoy(unsigned int n, unsigned int m){
    if(m == 0 || n == 0 ){
        return 1;
    }

    return delannoy(m-1,n) + delannoy(m-1,n-1) + delannoy(m,n-1);
}


int main(){

    for(unsigned int i = 0; i <= 15; i++) {
        for (unsigned int j = 0; j <= 15; j++) {
            int value = delannoy(i, j);
            printf("Delannoy de (%u, %u) = %d\n", i, j, value);
        }
    }


    return 0;
}