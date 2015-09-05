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

  if(arraySize == 1){
    printArray(arraySize, array);
    return array;
  }

  int i, numberToInsert, currentNumber;
  i = arraySize - 2;
  numberToInsert = array[i + 1];
  currentNumber = array[i];

  while(currentNumber > numberToInsert){
    array[i + 1] = currentNumber;
    printArray(arraySize, array);

    if(i <= 0) {
      currentNumber = numberToInsert - 1;
    }
    else{
      i--;
      currentNumber = array[i];
    }
  }

  if(arraySize > 2){
    array[i + 1] = numberToInsert;
  }else{
    array[i] = numberToInsert;
  }

  printArray(arraySize, array);

  return array;
}
