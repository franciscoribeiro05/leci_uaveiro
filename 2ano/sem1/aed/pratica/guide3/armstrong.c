#include<stdio.h>
#include<math.h>

int main(void){

    for(size_t i = 100; i<= 999;i++){
        int centenas = i / 100 ;
        int resto_cent = i % 100;
        int dezenas = resto_cent / 10;
        int unidades = resto_cent % 10;

        int centenas_cubo = pow(centenas,3);
        int dezenas_cubo = pow(dezenas,3);
        int unidades_cubo = pow(unidades,3);

        int soma_armstrong = centenas_cubo + dezenas_cubo + unidades_cubo;

        if(soma_armstrong == i){
            printf("%zu\n",i);
        }
    }



    return 0;
}