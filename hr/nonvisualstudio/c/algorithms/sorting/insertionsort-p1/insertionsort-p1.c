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

  bool done = false;
  int i, numberToInsert, currentNumber;
  i = arraySize - 2;
  numberToInsert = array[i + 1];
  currentNumber = array[i];

  while(currentNumber > numberToInsert){
    array[i + 1] = currentNumber;
    printArray(arraySize, array);

    if(i <= 0) {
      array[0] = numberToInsert;
      array[1] = currentNumber;

      done = true;
      currentNumber = numberToInsert - 1;
    }
    else{
      i--;
      currentNumber = array[i];
    }
  }

  if(done == false){
    array[i + 1] = numberToInsert;
  }

  printArray(arraySize, array);

  return array;
}

// int main(void) {
//
//  int _ar_size;
//  scanf("%d", &_ar_size);
//  int _ar[_ar_size], _ar_i;
//  for(_ar_i = 0; _ar_i < _ar_size; _ar_i++) {
//    scanf("%d", &_ar[_ar_i]);
//  }
//
//  insertion(_ar_size, _ar);
// }
