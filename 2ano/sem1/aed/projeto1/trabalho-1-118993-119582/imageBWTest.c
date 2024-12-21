// imageBWTest - A program that performs some image processing.
//
// This program is an example use of the imageBW module,
// a programming project for the course AED, DETI / UA.PT
//
// You may freely use and modify this code, NO WARRANTY, blah blah,
// as long as you give proper credit to the original and subsequent authors.
//
// The AED Team <jmadeira@ua.pt, jmr@ua.pt, ...>
// 2024

#include <assert.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "imageBW.h"
#include "instrumentation.h"

int main(void) {
  // To initalize operation counters
  ImageInit();

  //Declarar Função auxiliar de testes
  Image ImageCreateTopOnesBottomZeros(uint32 width, uint32 height);       // NOTA que: esta função retorna uma imagem com a metade de cima preta (1's) e com a metade de baixo branca(0's)

  // Creating and displaying some images

  printf("%s","White Image:\n\n");
  Image white_image = ImageCreate(8, 8, WHITE);
  ImageRAWPrint(white_image);

  printf("%s","Black Image:\n\n");
  Image black_image = ImageCreate(8, 8, BLACK);
  ImageRAWPrint(black_image);

  printf("%s","White Image NEG:\n\n");
  Image image_1 = ImageNEG(white_image);
  ImageRAWPrint(image_1);

  

  printf("%s","Chessboard Image:\n\n");
  Image chessboard = ImageCreateChessboard(8,8,2,WHITE);
  ImageRAWPrint(chessboard);

  printf("%s","ImageIsEqual:\n");
  int result_chessboard = ImageIsEqual(white_image,white_image);
  if (result_chessboard) {
    printf("As imagens são iguais.\n\n");
  } else {
    printf("As imagens são diferentes.\n\n");
  }
  printf("%s","AND(chessboard and Black)Image:\n\n");
  Image result_and1 = ImageAND(chessboard,black_image);
  ImageRAWPrint(result_and1);

  printf("%s","AND(chessboard and White)Image:\n\n");
  Image result_and2 = ImageAND(chessboard,white_image);
  ImageRAWPrint(result_and2);

  printf("%s","OR(chessboard and White)Image:\n\n");
  Image result_or = ImageOR(chessboard,white_image);
  ImageRAWPrint(result_or);

  printf("%s","XOR(chessboard and White)Image:\n\n");
  Image result_xor = ImageXOR(chessboard,white_image);
  ImageRAWPrint(result_xor);

  printf("%s","XOR(chessboard and Black)Image:\n\n");
  Image result_xor2 = ImageXOR(chessboard,black_image);
  ImageRAWPrint(result_xor2);

  printf("%s","Top 1's Bottom 0's Image:\n\n");
  Image top1bottom0 = ImageCreateTopOnesBottomZeros(8,8);
  ImageRAWPrint(top1bottom0);

  //printf("%s","Horizontal Flip Image:\n\n");
  //Image horizontal = ImageHorizontalMirror(top1bottom0);
  //ImageRAWPrint(horizontal);

  printf("%s","Vertical Flip Image:\n\n");
  Image vertical = ImageVerticalMirror(top1bottom0);
  ImageRAWPrint(vertical);

  printf("%s","Replicate at Bottom Image:\n\n");
  Image rep_bottom = ImageReplicateAtBottom(chessboard,white_image);
  ImageRAWPrint(rep_bottom);

  printf("%s","Replicate at Right Image:\n\n");
  Image rep_right = ImageReplicateAtRight(chessboard,white_image);
  ImageRAWPrint(rep_right);

  /*

  printf("%s","Tests:\n\n");      NÃO DESCOMENTAR (Testes computacionais)
  //analyse_chessboard();

  test_image_and();

  */

  // Housekeeping
  ImageDestroy(&white_image);
  ImageDestroy(&black_image);
  ImageDestroy(&image_1);
  //ImageDestroy(&top1bottom0);

  

  return 0;
}