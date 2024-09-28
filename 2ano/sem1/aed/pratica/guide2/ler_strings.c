#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main(void) {
    char string_1[50];
    char string_2[50];
    char string_3[100];

    printf("Introduza a primeira String: "); 
    scanf("%s", string_1);
    printf("Introduza a segunda String: ");
    scanf("%s", string_2);

    int contador_1 = 0;
    int maiusculas_2 = 0;

    // Contar caracteres alfabéticos em string_1
    for (size_t i = 0; i < strlen(string_1); i++) {
        if (isalpha(string_1[i])) {
            contador_1++;
        }
    }
    printf("Número de caracteres alfabéticos na primeira string: %d\n", contador_1);

    // Contar letras maiúsculas em string_2
    for (size_t i = 0; i < strlen(string_2); i++) {
        if (isupper(string_2[i])) {
            maiusculas_2++;
        }
    }
    printf("Número de letras maiúsculas na segunda string: %d\n", maiusculas_2);

    // Converter todas as letras para minúsculas
    for (size_t i = 0; i < strlen(string_1); i++) {
        string_1[i] = tolower(string_1[i]);
    }

    for (size_t i = 0; i < strlen(string_2); i++) {
        string_2[i] = tolower(string_2[i]);
    }

    // Comparar as duas strings
    if (strcmp(string_1, string_2) == 0) {
        printf("As duas strings são iguais.\n");
    } else {
        printf("As duas strings são diferentes.\n");
    }

    // Concatenar string_2 a string_3
    strcpy(string_3, string_2);
    strcat(string_3, string_2);

    // Exibir resultado da concatenação
    printf("Resultado da concatenação: %s\n", string_3);

    return 0;
}
