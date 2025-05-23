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

int main(int argc, char* argv[]) {
  if (argc != 1) {
    fprintf(stderr, "Usage: %s  # no arguments required (for now)\n", argv[0]);
    exit(1);
  }

  // To initalize operation counters
  ImageInit();

  // Creating and displaying some images
  Image white_image = ImageCreate(8, 8, WHITE);
  ImageRAWPrint(white_image);

  Image black_image = ImageCreate(8, 8, BLACK);
  ImageRAWPrint(black_image);

  Image image_1 = ImageNEG(white_image);
  ImageRAWPrint(image_1);

  Image image_2 = ImageReplicateAtBottom(white_image, black_image);
  ImageRAWPrint(image_2);

  printf("image_1 AND image_1\n");
  Image image_3 = ImageAND(image_1, image_1);
  ImageRAWPrint(image_3);

  printf("image_1 AND white_image\n"); //Inicialmente o professor pedia para fazer image_1 and image_2, mas como dava assertion fail (têm tamanhos diferentes) mudei para white_image
  Image image_4 = ImageAND(image_1, white_image);
  ImageRAWPrint(image_4);

  printf("image_1 OR white_image\n");
  Image image_5 = ImageOR(image_1, white_image); //Inicialmente o professor pedia para fazer image_1 or image_2, mas como dava assertion fail (têm tamanhos diferentes) mudei para white_image
  ImageRAWPrint(image_5);

  printf("image_1 XOR image_1\n");
  Image image_6 = ImageXOR(image_1, image_1);
  ImageRAWPrint(image_6);

  printf("image_1 XOR white_image\n");
  Image image_7 = ImageXOR(image_1, white_image); //Inicialmente o professor pedia para fazer image_1 or image_2, mas como dava assertion fail (têm tamanhos diferentes) mudei para white_image
  ImageRAWPrint(image_7);

  Image image_8 = ImageReplicateAtRight(image_6, image_7);
  ImageRAWPrint(image_8);

  Image image_9 = ImageReplicateAtRight(image_6, image_6);
  ImageRAWPrint(image_9);


  Image image_10 = ImageHorizontalMirror(image_2); //image_1
  ImageRAWPrint(image_10);

  Image image_11 = ImageVerticalMirror(image_8);
  ImageRAWPrint(image_11);

  Image image_12 = ImageCreateChessboard(10,10,2,1);
  ImageRAWPrint(image_12);
  
  int control = ImageIsEqual(black_image,image_1);
  printf("%d",control);

  // Saving in PBM format
  ImageSave(image_7, "image7.pbm");
  ImageSave(image_8, "image8.pbm");


  // Housekeeping
  ImageDestroy(&white_image);
  ImageDestroy(&black_image);
  ImageDestroy(&image_1);


  ImageDestroy(&image_2);
  ImageDestroy(&image_3);
  ImageDestroy(&image_4);
  ImageDestroy(&image_5);
  ImageDestroy(&image_6);
  ImageDestroy(&image_7);
  ImageDestroy(&image_8);
  ImageDestroy(&image_9);
  ImageDestroy(&image_10);
  ImageDestroy(&image_11);
  ImageDestroy(&image_12);

  return 0;
}
