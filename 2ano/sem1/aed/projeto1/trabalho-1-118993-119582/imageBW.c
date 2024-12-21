/// imageBW - A simple image processing module for BW images
///           represented using run-length encoding (RLE)
///
/// This module is part of a programming project
/// for the course AED, DETI / UA.PT
///
/// You may freely use and modify this code, at your own risk,
/// as long as you give proper credit to the original and subsequent authors.
///
/// The AED Team <jmadeira@ua.pt, jmr@ua.pt, ...>
/// 2024

// Student authors (fill in below):
// NMec: 118993
// Name: Francisco Miguel Dias Ribeiro
// NMec: 119582
// Name: Catarina Monteiro Rabaça
//
// Date: 02/11/2024
//
#include "imageBW.h"

#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>


#include "instrumentation.h"

// The data structure
//
// A BW image is stored in a structurow: Pointer to an array of rows, each in RLE re containing 3 fields:
// Two integers store the image width and height.
// The other field is a pointer to an array that stores the pointers
// to the RLE compressed image rows.
//
// Clients should use images only through variables of type Image,
// which are pointers to the image structure, and should not access the
// structure fields directly.

// Constant value --- Use them throughout your code
// const uint8 BLACK = 1;  // Black pixel value, defined on .h
// const uint8 WHITE = 0;  // White pixel value, defined on .h
const int EOR = -1;  // Stored as the last element of a RLE row

// Internal structure for storing RLE BW images
struct image {
  uint32 width;
  uint32 height;
  int** row;  // pointer to an array of pointers referencing the compressed rows
};

// This module follows "design-by-contract" principles.
// Read `Design-by-Contract.md` for more details.

/// Error handling functions

// In this module, only functions dealing with memory allocation or file
// (I/O) operations use defensive techniques.
//
// When one of these functions fails, it signals this by returning an error
// value such as NULL or 0 (see function documentation), and sets an internal
// variable (errCause) to a string indicating the failure cause.
// The errno global variable thoroughly used in the standard library is
// carefully preserved and propagated, and clients can use it together with
// the ImageErrMsg() function to produce informative error messages.
// The use of the GNU standard library error() function is recommended for
// this purpose.
//
// Additional information:  man 3 errno;  man 3 error;

// Variable to preserve errno temporarily

//-------------

//static int errsave = 0;


//-------------

// Error cause
static char* errCause;

/// Error cause.
/// After some other module function fails (and returns an error code),
/// calling this function retrieves an appropriate message describing the
/// failure cause.  This may be used together with global variable errno
/// to produce informative error messages (using error(), for instance).
///
/// After a successful operation, the result is not garanteed (it might be
/// the previous error cause).  It is not meant to be used in that situation!
char* ImageErrMsg() {  ///
  return errCause;
}

// Defensive programming aids
//
// Proper defensive programming in C, which lacks an exception mechanism,
// generally leads to possibly long chains of function calls, error checking,
// cleanup code, and return statements:
//   if ( funA(x) == errorA ) { return errorX; }
//   if ( funB(x) == errorB ) { cleanupForA(); return errorY; }
//   if ( funC(x) == errorC ) { cleanupForB(); cleanupForA(); return errorZ; }
//
// Understanding such chains is difficult, and writing them is boring, messy
// and error-prone.  Programmers tend to overlook the intricate details,
// and end up producing unsafe and sometimes incorrect programs.
//
// In this module, we try to deal with these chains using a somewhat
// unorthodox technique.  It resorts to a very simple internal function
// (check) that is used to wrap the function calls and error tests, and chain
// them into a long Boolean expression that reflects the success of the entire
// operation:
//   success =
//   check( funA(x) != error , "MsgFailA" ) &&
//   check( funB(x) != error , "MsgFailB" ) &&
//   check( funC(x) != error , "MsgFailC" ) ;
//   if (!success) {
//     conditionalCleanupCode();
//   }
//   return success;
//
// When a function fails, the chain is interrupted, thanks to the
// short-circuit && operator, and execution jumps to the cleanup code.
// Meanwhile, check() set errCause to an appropriate message.
//
// This technique has some legibility issues and is not always applicable,
// but it is quite concise, and concentrates cleanup code in a single place.
//
// See example utilization in ImageLoad and ImageSave.
//
// (You are not required to use this in your code!)

// Check a condition and set errCause to failmsg in case of failure.
// This may be used to chain a sequence of operations and verify its success.
// Propagates the condition.
// Preserves global errno!
static int check(int condition, const char* failmsg) {
  errCause = (char*)(condition ? "" : failmsg);
  return condition;
}

/// Init Image library.  (Call once!)
/// Currently, simply calibrate instrumentation and set names of counters.
void ImageInit(void) {  ///
  InstrCalibrate();
  InstrName[0] = "pixmem";  // InstrCount[0] will count pixel array acesses
  // Name other counters here...
}

// Macros to simplify accessing instrumentation counters:
#define PIXMEM InstrCount[0]
// Add more macros here...

// TIP: Search for PIXMEM or InstrCount to see where it is incremented!

/// Auxiliary (static) functions

/// Create the header of an image data structure
/// And allocate the array of pointers to RLE rows
static Image AllocateImageHeader(uint32 width, uint32 height) {
  assert(width > 0 && height > 0);
  Image newHeader = malloc(sizeof(struct image));
  assert(newHeader != NULL);

  newHeader->width = width;
  newHeader->height = height;

  // Allocating the array of pointers to RLE rows
  newHeader->row = malloc(height * sizeof(int*));
  assert(newHeader->row != NULL);

  return newHeader;
}

/// Allocate an array to store a RLE row with n elements
static int* AllocateRLERowArray(uint32 n) {
  assert(n > 2);
  int* newArray = malloc(n * sizeof(int));
  assert(newArray != NULL);

  return newArray;
}

/// Conpute the number of runs of a non-compressed (RAW) image row
static uint32 GetNumRunsInRAWRow(uint32 image_width, const uint8* RAW_row) {
  assert(image_width > 0);
  assert(RAW_row != NULL);

  // How many runs?
  uint32 num_runs = 1;
  for (uint32 i = 1; i < image_width; i++) {
    if (RAW_row[i] != RAW_row[i - 1]) {
      num_runs++;
    }
  }

  return num_runs;
}

/// Get the number of runs of a compressed RLE image row
static uint32 GetNumRunsInRLERow(const int* RLE_row) {
  assert(RLE_row != NULL);

  // Go through the RLE_row until EOR is found
  // Discard RLE_row[0], since it is a pixel color

  uint32 num_runs = 0;
  uint32 i = 1;
  while (RLE_row[i] != EOR) {
    num_runs++;
    i++;
  }

  return num_runs;
}

/// Get the number of elementsof an array storing a compressed RLE image row
static uint32 GetSizeRLERowArray(const int* RLE_row) {
  assert(RLE_row != NULL);

  // Go through the array until EOR is found
  uint32 i = 0;
  while (RLE_row[i] != EOR) {
    i++;
  }

  return (i + 1);
}

/// Compress into RLE format a RAW image row
/// Allocates and returns the array storing the image row in RLE format
static int* CompressRow(uint32 image_width, const uint8* RAW_row) {
  assert(image_width > 0);
  assert(RAW_row != NULL);

  // How many runs?
  uint32 num_runs = GetNumRunsInRAWRow(image_width, RAW_row);

  // Allocate the RLE row array
  int* RLE_row = malloc((num_runs + 2) * sizeof(int));
  assert(RLE_row != NULL);

  // Go through the RAW_row
  RLE_row[0] = (int)RAW_row[0];  // Initial pixel value
  uint32 index = 1;
  int num_pixels = 1;
  for (uint32 i = 1; i < image_width; i++) {
    if (RAW_row[i] != RAW_row[i - 1]) {
      RLE_row[index++] = num_pixels;
      num_pixels = 0;
    }
    num_pixels++;
  }
  RLE_row[index++] = num_pixels;
  RLE_row[index] = EOR;  // Reached the end of the row

  return RLE_row;
}

static uint8* UncompressRow(uint32 image_width, const int* RLE_row) {
  assert(image_width > 0);
  assert(RLE_row != NULL);

  // The uncompressed row
  uint8* row = (uint8*)malloc(image_width * sizeof(uint8));
  assert(row != NULL);

  // Go through the RLE_row until EOR is found
  int pixel_value = RLE_row[0];
  uint32 i = 1;
  uint32 dest_i = 0;
  while (RLE_row[i] != EOR) {
    // For each run
    for (int aux = 0; aux < RLE_row[i]; aux++) {
      row[dest_i++] = (uint8)pixel_value;
    }
    // Next run
    i++;
    pixel_value ^= 1;
  }

  return row;
}

// Add your auxiliary functions here...

/// Image management functions

/// Create a new BW image, either BLACK or WHITE.
///   width, height : the dimensions of the new image.
///   val: the pixel color (BLACK or WHITE).
/// Requires: width and height must be non-negative, val is either BLACK or
/// WHITE.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageCreate(uint32 width, uint32 height, uint8 val) {
  assert(width > 0 && height > 0);
  assert(val == WHITE || val == BLACK);

  Image newImage = AllocateImageHeader(width, height);

  // All image pixels have the same value
  int pixel_value = (int)val;

  // Creating the image rows, each row has just 1 run of pixels
  // Each row is represented by an array of 3 elements [value,length,EOR]
  for (uint32 i = 0; i < height; i++) {
    newImage->row[i] = AllocateRLERowArray(3);
    newImage->row[i][0] = pixel_value;
    newImage->row[i][1] = (int)width;
    newImage->row[i][2] = EOR;
  }

  return newImage;
}


//--------------------------------------------Função extra---------------------------------------------------







// NOTA que: se quiseres usar esta função no teu ficheiro imageBWTest.c terás que a declarar dentro do mesmo

// Função adicional que cria uma imagem com 1's no topo e 0's na embaixo
// Esta imagem pode ser usada para testar o funcionamento de outras funções
Image ImageCreateTopOnesBottomZeros(uint32 width, uint32 height) {
    // Verificar condições iniciais
    assert(width > 0 && height > 0);

    // Alocar a estrutura da imagem
    Image image = malloc(sizeof(struct image));  // Alocar memória para a estrutura
    if (!image) return NULL;

    // Inicializar os campos da imagem
    image->width = width;
    image->height = height;
    image->row = malloc(height * sizeof(int*));  // Alocar memória para as linhas
    if (!image->row) {
        free(image);
        return NULL;
    }

    // Construir cada linha da imagem
    for (uint32 y = 0; y < height; y++) {
        // Alocar memória para a linha de codificação RLE
        int* rle_row = malloc(3 * sizeof(int)); // Cada linha contém até 3 elementos (valor, comprimento, EOR)
        if (!rle_row) {
            // Limpar as linhas previamente alocadas em caso de erro
            for (uint32 i = 0; i < y; i++) {
                free(image->row[i]);
            }
            free(image->row);
            free(image);
            return NULL;
        }

        uint8 value = (y < height / 2) ? 1 : 0;  // Metade superior com 1, inferior com 0

        // Preencher a linha com os valores de codificação RLE
        rle_row[0] = value;   // Valor (1 ou 0)
        rle_row[1] = width;   // Comprimento (toda a largura)
        rle_row[2] = EOR;     // Fim da linha (End of Run)

        // Armazenar a linha no array da imagem
        image->row[y] = rle_row;  // Usar -> para acessar o campo row
    }

    return image;
}






//-----------------------------------CHESSBOARD----------------------------------------









/// Create a new BW image, with a perfect CHESSBOARD pattern.
///   width, height : the dimensions of the new image.
///   square_edge : the lenght of the edges of the sqares making up the
///   chessboard pattern.
///   first_value: the pixel color (BLACK or WHITE) of the
///   first image pixel.
/// Requires: width and height must be non-negative, val is either BLACK or
/// WHITE.
/// Requires: for the squares, width and height must be multiples of the
/// edge lenght of the squares
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageCreateChessboard(uint32 width, uint32 height, uint32 square_edge, uint8 first_value) {
    
    //  Verificar pârametros da função 
    assert(width > 0 && height > 0);
    assert(first_value == BLACK || first_value == WHITE);
    assert(square_edge > 0);
    assert(width % square_edge == 0 && height % square_edge == 0);

    // Alocar a estrutura da imagem
    Image image = AllocateImageHeader(width, height);

    //-------------------------------

    //InstrCount[0] += sizeof(*image) + height * sizeof(image->row[0]);               // Testes computacionais      NÃO DESCOMENTAR

    //-------------------------------

    uint8 current_row_start_value = first_value;

    // Construir cada linha da imagem
    for (uint32 y = 0; y < height; y++) {
        int* rle_row = AllocateRLERowArray((width / square_edge) + 2);

        //------------------------

        //InstrCount[0] += ((width / square_edge) + 2) * sizeof(int);                  // Testes computacionais     NÃO DESCOMENTAR


        //------------------------

        uint32 index = 0;
        rle_row[index++] = current_row_start_value;

        for (uint32 x = 0; x < width; x += square_edge) {
            rle_row[index++] = square_edge;
            
        }

        rle_row[index] = EOR; // Finalizar a linha
        image->row[y] = rle_row;

        // Alternar a cor inicial para a próxima linha se for fim de bloco
        if ((y + 1) % square_edge == 0) {
            current_row_start_value ^= 1;
        }
    }

    return image;
}

/*


                                                    // Função de testes computacionais da função ImageCreateChessboard      NÃO DESCOMENTAR

int analyse_chessboard(void) {
    InstrName[0] = "memory";
    InstrCalibrate();
    InstrReset();


          

    const uint32 fixed_m = 40;   // Altura fixa
    const uint32 fixed_n = 40;   // Largura fixa
    const uint32 fixed_s = 5;    // Tamanho fixo do quadrado

    // Variação de SquareEdge (s) com m e n fixos
    printf("\nVarying SquareEdge (Width = %u, Height = %u):\n", fixed_n, fixed_m);
    for (uint32 s = 1; s <= fixed_m && s <= fixed_n; s++) {
        if (fixed_m % s != 0 || fixed_n % s != 0) {
            continue; // Pule iterações inválidas
        }
        InstrReset();

        Image image = ImageCreateChessboard(fixed_n, fixed_m, s, BLACK);

        printf("SquareEdge = %u\n", s);
        InstrPrint();

        free(image); // Liber\e a memória
    }

    // Variação de Width (n) com m e s fixos
    printf("\nVarying Width (Height = %u, SquareEdge = %u):\n", fixed_m, fixed_s);
    for (uint32 n = fixed_s; n <= 100; n += 10) {
        if (n % fixed_s != 0) {
            continue; // Pule iterações inválidas
        }
        InstrReset();

        Image image = ImageCreateChessboard(n, fixed_m, fixed_s, BLACK);

        printf("Width = %u\n", n);
        InstrPrint();

        free(image); // Libere a memória
    }

    // Variação de Height (m) com n e s fixos
    printf("\nVarying Height (Width = %u, SquareEdge = %u):\n", fixed_n, fixed_s);
    for (uint32 m = fixed_s; m <= 100; m += 10) {
        if (m % fixed_s != 0) {
            continue; // Pule iterações inválidas
        }
        InstrReset();

        Image image = ImageCreateChessboard(fixed_n, m, fixed_s, BLACK);

        printf("Height = %u\n", m);
        InstrPrint();

        free(image); // Libere a memória
    }

    return 0;
}

*/


/// Destroy the image pointed to by (*imgp).
///   imgp : address of an Image variable.
/// If (*imgp)==NULL, no operation is performed.
/// Ensures: (*imgp)==NULL.
/// Should never fail.
void ImageDestroy(Image* imgp) {
  assert(imgp != NULL);

  Image img = *imgp;

  for (uint32 i = 0; i < img->height; i++) {
    free(img->row[i]);
  }
  free(img->row);
  free(img);

  *imgp = NULL;
}

/// Printing on the console

/// Output the raw BW image
void ImageRAWPrint(const Image img) {
  assert(img != NULL);

  printf("width = %d height = %d\n", img->width, img->height);
  printf(" RAW image\n");

  // Print the pixels of each image row
  for (uint32 i = 0; i < img->height; i++) {
    // The value of the first pixel in the current row
    int pixel_value = img->row[i][0];
    for (uint32 j = 1; img->row[i][j] != EOR; j++) {
      // Print the current run of pixels
      for (int k = 0; k < img->row[i][j]; k++) {
        printf("%d", pixel_value);
      }
      // Switch (XOR) to the pixel value for the next run, if any
      pixel_value ^= 1;
    }
    // At current row end
    printf("\n");
  }
  printf("\n");
}

/// Output the compressed RLE image
void ImageRLEPrint(const Image img) {
  assert(img != NULL);

  printf("width = %d height = %d\n", img->width, img->height);
  printf(" RLE encoding\n");

  // Print the compressed rows information
  for (uint32 i = 0; i < img->height; i++) {
    uint32 j;
    for (j = 0; img->row[i][j] != EOR; j++) {
      printf("%d ", img->row[i][j]);
    }
    printf("%d\n", img->row[i][j]);
  }
  printf("\n");
}

/// PBM BW file operations

// See PBM format specification: http://netpbm.sourceforge.net/doc/pbm.html

// Auxiliary function
static void unpackBits(int nbytes, const uint8 bytes[], uint8 raw_row[]) {
  // bitmask starts at top bit
  int offset = 0;
  uint8 mask = 1 << (7 - offset);
  while (offset < 8) {  // or (mask > 0)
    for (int b = 0; b < nbytes; b++) {
      raw_row[8 * b + offset] = (bytes[b] & mask) != 0;
    }
    mask >>= 1;
    offset++;
  }
}

// Auxiliary function
static void packBits(int nbytes, uint8 bytes[], const uint8 raw_row[]) {
  // bitmask starts at top bit
  int offset = 0;
  uint8 mask = 1 << (7 - offset);
  while (offset < 8) {  // or (mask > 0)
    for (int b = 0; b < nbytes; b++) {
      if (offset == 0) bytes[b] = 0;
      bytes[b] |= raw_row[8 * b + offset] ? mask : 0;
    }
    mask >>= 1;
    offset++;
  }
}

// Match and skip 0 or more comment lines in file f.
// Comments start with a # and continue until the end-of-line, inclusive.
// Returns the number of comments skipped.
static int skipComments(FILE* f) {
  char c;
  int i = 0;
  while (fscanf(f, "#%*[^\n]%c", &c) == 1 && c == '\n') {
    i++;
  }
  return i;
}

/// Load a raw PBM file.
/// Only binary PBM files are accepted.
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageLoad(const char* filename) {  ///
  int w, h;
  char c;
  FILE* f = NULL;
  Image img = NULL;

  check((f = fopen(filename, "rb")) != NULL, "Open failed");
  // Parse PBM header
  check(fscanf(f, "P%c ", &c) == 1 && c == '4', "Invalid file format");
  skipComments(f);
  check(fscanf(f, "%d ", &w) == 1 && w >= 0, "Invalid width");
  skipComments(f);
  check(fscanf(f, "%d", &h) == 1 && h >= 0, "Invalid height");
  check(fscanf(f, "%c", &c) == 1 && isspace(c), "Whitespace expected");

  // Allocate image
  img = AllocateImageHeader(w, h);

  // Read pixels
  int nbytes = (w + 8 - 1) / 8;  // number of bytes for each row
  // using VLAs...
  uint8 bytes[nbytes];
  uint8 raw_row[nbytes * 8];
  for (uint32 i = 0; i < img->height; i++) {
    check(fread(bytes, sizeof(uint8), nbytes, f) == (size_t)nbytes,
          "Reading pixels");
    unpackBits(nbytes, bytes, raw_row);
    img->row[i] = CompressRow(w, raw_row);
  }

  fclose(f);
  return img;
}

/// Save image to PBM file.
/// On success, returns nonzero.
/// On failure, returns 0, and
/// a partial and invalid file may be left in the system.
int ImageSave(const Image img, const char* filename) {  ///
  assert(img != NULL);
  int w = img->width;
  int h = img->height;
  FILE* f = NULL;

  check((f = fopen(filename, "wb")) != NULL, "Open failed");
  check(fprintf(f, "P4\n%d %d\n", w, h) > 0, "Writing header failed");

  // Write pixels
  int nbytes = (w + 8 - 1) / 8;  // number of bytes for each row
  // using VLAs...
  uint8 bytes[nbytes];
  // unit8 raw_row[nbytes*8];
  for (uint32 i = 0; i < img->height; i++) {
    // UncompressRow...
    uint8* raw_row = UncompressRow(nbytes * 8, img->row[i]);
    // Fill padding pixels with WHITE
    memset(raw_row + w, WHITE, nbytes * 8 - w);
    packBits(nbytes, bytes, raw_row);
    check(fwrite(bytes, sizeof(uint8), nbytes, f) == (size_t)nbytes,
          "Writing pixels failed");
    free(raw_row);
  }

  // Cleanup
  fclose(f);
  return 0;
}

/// Information queries

/// Get image width
int ImageWidth(const Image img) {
  assert(img != NULL);
  return img->width;
}

/// Get image height
int ImageHeight(const Image img) {
  assert(img != NULL);
  return img->height;
}










//-------------------------------------------ImageIsEqual-----------------------------------











/// Image comparison

int ImageIsEqual(const Image img1, const Image img2) {
    assert(img1 != NULL && img2 != NULL);

    // Ponteiros para a largura e altura
    uint32 width1 = img1->width;
    uint32 width2 = img2->width;
    uint32 height1 = img1->height;
    uint32 height2 = img2->height;

    // Verificar se dimensões são iguais
    if (width1 != width2 || height1 != height2) {
        return 0;
    }

    // Verificar pixel a pixel
    for (uint32 i = 0; i < height1; i++) {
        const int *row1 = img1->row[i];
        const int *row2 = img2->row[i];

        for (uint32 j = 0; j < width1; j++) {
            if (row1[j] != row2[j]) {
                return 0; // Mismatch encontrado
            }
        }
    }

    return 1; // Imagens são iguais
}




int ImageIsDifferent(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  return !ImageIsEqual(img1, img2);
}

/// Boolean Operations on image pixels

/// These functions apply boolean operations to images,
/// returning a new image as a result.
///
/// Operand images are left untouched and must be of the same size.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)

Image ImageNEG(const Image img) {
  assert(img != NULL);

  uint32 width = img->width;
  uint32 height = img->height;

  Image newImage = AllocateImageHeader(width, height);

  // Directly copying the rows, one by one
  // And changing the value of row[i][0]

  for (uint32 i = 0; i < height; i++) {
    uint32 num_elems = GetSizeRLERowArray(img->row[i]);
    newImage->row[i] = AllocateRLERowArray(num_elems);
    memcpy(newImage->row[i], img->row[i], num_elems * sizeof(int));
    newImage->row[i][0] ^= 1;  // Just negate the value of the first pixel run
  }

  return newImage;
}



//----------------------------------------Função extra para criar uma imagem vazia-------------------------------



// Criar iamgem vazia
static Image ImageCreateEmpty(uint32 width, uint32 height) {

    assert(width > 0 && height > 0);

    // Alocar cabeçalho da imagem
    Image newImage = AllocateImageHeader(width, height);

    // Apenas alocar espaço para as linhas comprimidas (vazias)
    for (uint32 i = 0; i < height; i++) {
        newImage->row[i] = NULL;  // Inicializamos como NULL até processar cada linha
    }

    return newImage;
}






//-----------------------------------------------ImageAND sem usar compressão------------------------------------------



/*
        // Função de teste computacional da função imageAND       NÃO DESCOMENTAR


int test_image_and(void) {
    // Calibrar e resetar as instruções
    InstrName[0] = "PixelOps"; 
    InstrCalibrate();  
    InstrReset();      // Resetando contadores antes de iniciar os testes.

    for (uint32 size = 10; size < 100; size += 10) {
        InstrReset(); // Resetando a contagem a cada iteração.

        // Criação das imagens de teste
        Image img1 = ImageCreateChessboard(size, size,1,BLACK);
        Image img2 = ImageCreate(size, size, BLACK); // Imagem preta.
        
        // Executa a operação AND
        Image result_img = ImageAND(img1, img2);

        // Imprime os resultados do contador de operações
        printf("Test ImageAND for size %u x %u\n", size, size);
        InstrPrint();

        // Libera a memória alocada para as imagens
        free(img1);
        free(img2);
        free(result_img);
    }

    return 0;
}


*/


// NOTA que: para fazer esta função sem descomprimir e comprimir as linhas usei duas funções 
// Poderia estar tudo numa mas achei melhor assim por uma questão de organização do código
// Função ImageAND -> itera sobre cada linha em RLE e chama a função ProcessRowAND
// Função ProcessRowAND -> faz um AND bit a bit entre duas linas sem as descomprimir e voltar a comprimir no fim



// Função para calcular o AND de duas linhas RLE
  static int* ProcessRowAND(const int* row1, const int* row2) {
    // Obter o número de "runs" (sequências compactadas) em cada linha RLE
    int number_runs1 = GetNumRunsInRLERow(row1);
    int number_runs2 = GetNumRunsInRLERow(row2);

    // Alocar espaço para o resultado
    int* result_row = AllocateRLERowArray(number_runs1 + number_runs2 + 2);

    // Índices para percorrer os "runs" das linhas de entrada
    int index_run1 = 0, index_run2 = 0, result_index = 1;

    // Inicializar os valores e comprimentos dos "runs" atuais
    int remaining1 = row1[1], remaining2 = row2[1];  // Comprimentos dos "runs" atuais
    int run_value1 = row1[0], run_value2 = row2[0];  // Valores dos "runs" atuais (0 ou 1)

    // Valor atual do "run" resultante e seu comprimento
    int current_value = run_value1 & run_value2, run_length = 0;

    // Processar as linhas enquanto houver "runs" restantes em qualquer linha
    while (index_run1 < number_runs1 || index_run2 < number_runs2) {
        // Determinar o menor comprimento entre os "runs" atuais
        int min_run = (remaining1 < remaining2) ? remaining1 : remaining2;

        //----------------------

        //InstrCount[0] += 1;         Testes computacionais NÃO DESCOMENTAR

        //----------------------

        // Atualizar o comprimento do "run" resultante
        if ((run_value1 & run_value2) == current_value) {
            // Se o valor lógico atual não mudou, acumular o comprimento
            run_length += min_run;
          
        } else {
            // Caso contrário, registrar o "run" atual no resultado
            result_row[result_index++] = run_length;
            current_value = run_value1 & run_value2;  // Atualizar o valor do "run" atual
            run_length = min_run;                    // Reiniciar o comprimento acumulado
        }

        // Atualizar os comprimentos restantes
        remaining1 -= min_run;
        remaining2 -= min_run;

        // Avançar para o próximo "run" na linha 1, se necessário
        if (remaining1 == 0 && index_run1 < number_runs1) {
            index_run1++;
            remaining1 = row1[index_run1 + 1];  // Atualizar o comprimento do próximo "run"
            run_value1 = !run_value1;           // Alternar o valor do próximo "run"
        }

        // Avançar para o próximo "run" na linha 2, se necessário
        if (remaining2 == 0 && index_run2 < number_runs2) {
            index_run2++;
            remaining2 = row2[index_run2 + 1];  // Atualizar o comprimento do próximo "run"
            run_value2 = !run_value2;           // Alternar o valor do próximo "run"
        }
    }

    // Adicionar o último "run" ao resultado
    result_row[result_index++] = run_length;

    // Marcar o final da linha resultante com EOR (End of Row)
    result_row[result_index] = EOR;

    // Retornar a linha resultante
    return result_row;
}
                       
// Comentar a função ImageAND(VERSÃO 1) abaixo e descomentar a outra versão da função ImageAND (VERSÃO 2) (ainda mais abaixo) se quiser testar a VERSÃO2 

// ----------------------------- ImageAND (VERSÃO 1)------------------------------------------


  Image ImageAND(const Image img1, const Image img2) {
    assert(img1 != NULL && img2 != NULL);

    // Verificar se as dimensões são compatíveis
    if (img1->width != img2->width || img1->height != img2->height) {
        return NULL;
    }

    // Criar a imagem resultante
    Image result_img = AllocateImageHeader(img1->width, img1->height);

    // Processar cada linha da imagem
    for (uint32 i = 0; i < img1->height; i++) {
        result_img->row[i] = ProcessRowAND(img1->row[i], img2->row[i]);
    }

    return result_img;
}







// ------------------------------------------------ImageAND usando descompressão (VERSÃO 2)-------------------------------------------------






// Descomentar esta parte (função ImageAND) e comentar a de cima (OUTRA VERSÃO DE IMAGEAND) para poder testar o IMAGEAND sem usar compressão e descompressão de linhas


/*

Image ImageAND(const Image img1, const Image img2) {
    // Verificar pré-condições
    assert(img1 != NULL && img2 != NULL);
    assert(img1->width == img2->width && img1->height == img2->height);

    //Complete tbe code...

    // Obter dimensões das imagens
    uint32 width = img1->width;
    uint32 height = img1->height;

    // Criar a imagem resultante
    Image imageAnd =  ImageCreateEmpty(width, height);

    // Iterar por cada linha das imagens
    for (uint32 j = 0; j < height; j++) {
        // Descomprimir as linhas correspondentes das duas imagens
        uint8* row1 = UncompressRow(width, img1->row[j]);
        uint8* row2 = UncompressRow(width, img2->row[j]);

        // Alocar memória para a linha resultante
        uint8* resultRow = malloc(width * sizeof(uint8));

        // Aplicar a operação AND em cada pixel da linha
        for (uint32 m = 0; m < width; m++) {
            resultRow[m] = row1[m] & row2[m];
            // InstrCount[0] += 1;                                    // NÃO DESCOMENTAR (testes computacionais da função)
        }

        // Comprimir a linha resultante e armazenar na nova imagem
        imageAnd->row[j] = CompressRow(width, resultRow);

        // Liberar memória temporária
        free(row1);
        free(row2);
        free(resultRow);
    }

    return imageAnd;
}

*/


//------------------------------------------ImageOR--------------------------------------------------------------


Image ImageOR(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->width == img2->width && img1->height == img2->height);

 // Obter dimensões das imagens
    uint32 width = img1->width;
    uint32 height = img1->height;

    // Criar a imagem resultante
    Image imagemOr = ImageCreateEmpty(width, height);

    // Iterar por cada linha das imagens
    for (uint32 j = 0; j < height; j++) {
        // Descomprimir as linhas correspondentes das duas imagens
        uint8* row1 = UncompressRow(width, img1->row[j]);
        uint8* row2 = UncompressRow(width, img2->row[j]);

        // Alocar memória para a linha resultante
        uint8* resultRow = malloc(width * sizeof(uint8));

        // Aplicar a operação OR em cada pixel da linha
        for (uint32 m = 0; m < width; m++) {
            resultRow[m] = row1[m] | row2[m];
        }

        // Comprimir a linha resultante e armazenar na nova imagem
        imagemOr->row[j] = CompressRow(width, resultRow);

        // Liberar memória temporária
        free(row1);
        free(row2);
        free(resultRow);
    }

    return imagemOr;
}







//---------------------------------------------ImageXOR-------------------------------------------------------









Image ImageXOR(Image img1, Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->width == img2->width && img1->height == img2->height);

 // Obter dimensões das imagens
    uint32 width = img1->width;
    uint32 height = img1->height;

    // Criar a imagem resultante
    Image imagemXor = ImageCreateEmpty(width, height);

    // Iterar por cada linha das imagens
    for (uint32 j = 0; j < height; j++) {
        // Descomprimir as linhas correspondentes das duas imagens
        uint8* row1 = UncompressRow(width, img1->row[j]);
        uint8* row2 = UncompressRow(width, img2->row[j]);

        // Alocar memória para a linha resultante
        uint8* resultRow = malloc(width * sizeof(uint8));

        // Aplicar a operação XOR em cada pixel da linha
        for (uint32 m = 0; m < width; m++) {
            resultRow[m] = row1[m] ^ row2[m];
        }

        // Comprimir a linha resultante e armazenar na nova imagem
        imagemXor->row[j] = CompressRow(width, resultRow);

        // Liberar memória temporária utilizada
        free(row1);
        free(row2);
        free(resultRow);
    }

    return imagemXor;
}






//-------------------------------------Horizontal Mirror---------------------------------------------



/// Geometric transformations

/// These functions apply geometric transformations to an image,
/// returning a new image as a result.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)

/// Mirror an image = flip top-bottom.
/// Returns a mirrored version of the image.
/// Ensures: The original img is not modified.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageHorizontalMirror(const Image img) {
    assert(img != NULL); // Garantir que a imagem de entrada não é nula

    uint32 width = img->width;
    uint32 height = img->height;

    // Criar a nova imagem com as mesmas dimensões da imagem original
    Image horizontalImage = AllocateImageHeader(width, height);

    // Inverter as linhas verticalmente
    for (uint32 i = height; i > 0; i--) {
        // Trocar a ordem das linhas da imagem e colocar isso na imagem espelhada(resultado)
        horizontalImage->row[height - i] = img->row[i - 1];
    }

    return horizontalImage; // Retornar a imagem espelhada horizontalmente
}



//---------------------------------------------------Vertical Mirror----------------------------------------------------

/// Mirror an image = flip left-right.
/// Returns a mirrored version of the image.
/// Ensures: The original img is not modified.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageVerticalMirror(const Image inputImage) {
    assert(inputImage != NULL);

    uint32 imageWidth = inputImage->width;
    uint32 imageHeight = inputImage->height;

    Image mirroredImage = AllocateImageHeader(imageWidth, imageHeight);

    for (uint32 rowIndex = 0; rowIndex < imageHeight; rowIndex++) {
        // Descompactar a linha atual da imagem original
        uint8* originalRow = UncompressRow(imageWidth, inputImage->row[rowIndex]);

        // Alocar memória para a linha invertida
        uint8* reversedRow = malloc(imageWidth * sizeof(uint8));
        uint32 reversedIndex = imageWidth - 1;

        // Inverter a linha
        for (uint32 colIndex = 0; colIndex < imageWidth; colIndex++) {
            reversedRow[reversedIndex] = originalRow[colIndex];
            reversedIndex--;
        }

        // Compactar e armazenar a linha invertida na nova imagem
        mirroredImage->row[rowIndex] = CompressRow(imageWidth, reversedRow);

        // Libertar a memória alocada
        free(originalRow);
        free(reversedRow);
    }

    return mirroredImage;
}






//------------------------------------------------- REPLICATE AT BOTTOM--------------------------------------------







/// Replicate img2 at the bottom of imag1, creating a larger image
/// Requires: the width of the two images must be the same.
/// Returns the new larger image.
/// Ensures: The original images are not modified.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageReplicateAtBottom(const Image img1, const Image img2) {
    assert(img1 != NULL && img2 != NULL);  // Verificar se as imagens são válidas
    assert(img1->width == img2->width);    // Verificar se as larguras são iguais

    uint32 new_width = img1->width;
    uint32 new_height = img1->height + img2->height;

    // Alocar a nova imagem com memória contígua para todas as linhas
    Image newImage = AllocateImageHeader(new_width, new_height);

    // Copiar as linhas de img1 para a nova imagem
    for (uint32 y = 0; y < img1->height; y++) {
        newImage->row[y] = img1->row[y]; // Direto, sem alocação extra
    }

    // Copiar as linhas de img2 para a parte inferior da nova imagem
    for (uint32 y = 0; y < img2->height; y++) {
        newImage->row[img1->height + y] = img2->row[y]; // Direto, sem alocação extra
    }

    return newImage;
}



//------------------------------------------- REPLICATE AT RIGHT-------------------------------------------------






/// Replicate img2 to the right of imag1, creating a larger image
/// Requires: the height of the two images must be the same.
/// Returns the new larger image.
/// Ensures: The original images are not modified.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageReplicateAtRight(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL); // Assert para verificar se ambas as imagens existem
  assert(img1->height == img2->height); // Assert para verificar se as imagens têm o mesmo tamanho

  uint32 new_width = img1->width + img2->width; // Largura da nova imagem
  uint32 new_height = img1->height; // Altura da nova imagem

  Image newImage = AllocateImageHeader(new_width, new_height); // Alocação de memória para a nova imagem

  // Loop que junta as linhas das imagens originais e coloca-as na nova imagem
  for (uint32 i = 0; i < new_height; i++) {
    uint32 num_elems = GetSizeRLERowArray(img1->row[i]) + GetSizeRLERowArray(img2->row[i]);
    newImage->row[i] = AllocateRLERowArray(num_elems);

    uint8* row1 = UncompressRow(img1->width, img1->row[i]); // Obter cada linha da imagem 1 em binário
    uint8* row2 = UncompressRow(img2->width, img2->row[i]); // Obter cada linha da imagem 2 em binário
    
    uint8* newRow = malloc(new_width * sizeof(uint8)); // Alocação de memória para a nova linha

    // Copia a linha row1 para newRow
    for (uint32 j = 0; j < img1->width; j++) {
      newRow[j] = row1[j];
    }

    // Copia a linha row2 para newRow (na posição correta após row1)
    for (uint32 j = 0; j < img2->width; j++) {
      newRow[img1->width + j] = row2[j];
    }

    newImage->row[i] = CompressRow(new_width, newRow); // Reverter a linha para RLE

    // Libertar a memória alocada
    free(row1);
    free(row2);
    free(newRow);
  }

  return newImage;
}
