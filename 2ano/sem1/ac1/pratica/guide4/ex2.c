#include <stdio.h>    // Biblioteca padrão para entrada/saída
#include <string.h>   // Biblioteca para manipulação de strings, incluindo strcspn

#define SIZE 20

// Declaração dos protótipos das funções
void read_string(char str[], int size);  // Função que lê uma string
void print_int10(int num);               // Função que imprime um número inteiro

int main(void) {
    static char str[SIZE+1];  // Aloca espaço para 20 caracteres + o terminador '\0'
    int num = 0;              // Contador para o número de dígitos
    char *p;                  // Ponteiro para percorrer a string
    
    read_string(str, SIZE);    // Chama a função para ler a string
    p = str;                   // Inicializa o ponteiro
    
    while (*p != '\0') {       // Loop até o final da string
        if (*p >= '0' && *p <= '9') {
            num++;             // Conta o número de dígitos
        }
        p++;                   // Avança o ponteiro para o próximo caractere
    }
    
    print_int10(num);           // Imprime o número de dígitos
    
    return 0;                   // Retorna sucesso
}

// Implementação da função read_string
void read_string(char str[], int size) {
    // Lê uma string do teclado com tamanho máximo `size`
    printf("Digite uma string (máximo %d caracteres): ", size);
    fgets(str, size + 1, stdin);  // +1 para incluir o terminador '\0'
    
    // Remove o '\n' do final, se existir (pois fgets captura o '\n')
    str[strcspn(str, "\n")] = '\0';
}

// Implementação da função print_int10
void print_int10(int num) {
    // Imprime o valor do número de dígitos
    printf("Número de dígitos: %d\n", num);
}
