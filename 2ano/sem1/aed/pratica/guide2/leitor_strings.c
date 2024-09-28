#include<stdio.h>
#include<ctype.h>
#include<string.h>


int main(void){

    char string_1[50];
    char string_2[50];
    

    printf("Introduza a primeira String: "); 
    scanf("%s", string_1);
    printf("Introduza a segunda String: ");
    scanf("%s", string_2);

    int contador_1 = 0;
    int maiusculas_2 = 0;

    for(size_t i = 0; i< strlen(string_1);i++){
        if(isalpha(string_1[i])){
            contador_1++;
        }
    }

    printf("%d", contador_1);

    for(size_t i = 0; i< strlen(string_2);i++){
        if(isupper(string_2[i])){
            maiusculas_2++;
        }
    }

    printf("%d", maiusculas_2);

    for(size_t i = 0; i < strlen(string_1); i++){
        string_1[i] = tolower(string_1[i]);
    }

    for(size_t i = 0; i < strlen(string_2); i++){
        string_2[i] = tolower(string_2[i]);
    }

    if(strcmp(string_1, string_2) == 0){
        printf("As duas strings são iguais.\n");
    } else {
        printf("As duas strings são diferentes.\n");
    }

    char string_3[100] = string_2;

    strcat(string_3, string_2);

    printf("%s", string_3);



    return 0;
}