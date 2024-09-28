#include <stdio.h>
#include <math.h>

#define M_PI 3.14159265358979323846

int main() {
    double radians; // ângulo em radianos
    FILE *file; // Ponteiro para o arquivo

    // Abre o arquivo para escrita
    file = fopen("output.txt", "w");
    if (file == NULL) {
        printf("Erro ao abrir o arquivo.\n");
        return 1; // Retorna um código de erro
    }

    // Cabeçalho
    fprintf(file, "ang sin(ang)         cos(ang)\n");
    fprintf(file, "--- --------------- -------------------\n");

    for (int i = 0; i < 360; i += 5) {
        radians = i * (M_PI / 180.0);
        double sen = sin(radians);
        double coss = cos(radians);

        // Escreve no arquivo
        fprintf(file, "%3d %10.*f %10.*f\n", i, 10, sen, 10, coss);
    }

    // Fecha o arquivo
    fclose(file);
    
    printf("Dados escritos em output.txt\n");

    return 0;
}
