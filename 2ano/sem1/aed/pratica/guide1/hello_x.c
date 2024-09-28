#include <stdio.h>


int main(void){

    char nome_proprio[30];
    char apelido[30];

    printf("Digite o seu nome próprio: ");
    scanf("%s",nome_proprio);
    printf("Digite o seu apelido: ");
    scanf("%s",apelido);

    printf("\nOlá amigo, %s %s!\n",nome_proprio,apelido);
    return 0;
}
