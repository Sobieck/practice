#include <stdbool.h>
#include <string.h>

void printArray(int arraySize, int * array){
  int i;
  for (i = 0; i < arraySize; i++) {
    printf("%d ", array[i]);
  }

  printf("\n");
}

int * insertion(int arraySize, int * array){

  printArray(arraySize, array);

  if(arraySize == 1){
    return array;
  }

  int i, numberToInsert, currentNumber;
  i = arraySize - 1;
  numberToInsert = array[i];
  currentNumber = array[i - 1];

  while(currentNumber > numberToInsert){

    array[i] = currentNumber;

    array[i - 1] = numberToInsert;
    i--;
    currentNumber = array[i];

    printArray(arraySize, array);
  }

  return array;
}
