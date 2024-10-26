#include<stdio.h>

#define SIZE 4  // Define SIZE como 4

int array[SIZE] = {7692, 23, 5, 234}; // Declara um array global de 4 posições e inicializa-o

int main(void) {
    
    int soma = 0;       // Inicializa soma com 0

    for (size_t i = 0; i< SIZE; i++) {
        soma = soma + array[i]; // Adiciona o valor apontado por p à soma
                        // Incrementa o ponteiro (avança 4 bytes para o próximo elemento)
    }

    printf("%d",soma);     // Chama a função para imprimir a soma

    return 0;
}
