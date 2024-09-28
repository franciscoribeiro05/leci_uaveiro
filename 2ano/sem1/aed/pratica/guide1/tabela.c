#include <stdio.h>
#include <math.h>

int main() {
    int linhas;
    
    printf("Quantas linhas? \n");
    scanf("%d", &linhas);

    // Cabeçalho da tabela
    printf("-----------------\n");

    for (int i = 1; i <= linhas; i++) {
        int quadrados = i * i;      // Calcula o quadrado
        double raizes = sqrt(i);    // Calcula a raiz quadrada
        
        // Imprime o quadrado e a raiz quadrada com formatação
        printf("| %4d | %6.2f |\n", quadrados, raizes);
    }

    printf("-----------------\n");

    return 0;
}
