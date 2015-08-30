#include <stdbool.h>
#include <string.h>

long index_of_number(long number, long array[])
{
  long i = 0;
  bool found = false;

  while (found == false) {
    if (number == array[i]) {
      found = true;
    }
    else {
      i++;
    }
  }

  return i;
}

long index_of_number_from_string(long number, char *string, long numberOfLongsInArray){
  long arrayOfLongs[numberOfLongsInArray];
  char *tail;

  int i = 0;

  while(i != numberOfLongsInArray){
    long next;

    while(isspace(*string)) string++; //skip space

    arrayOfLongs[i] = strtol(string, &tail, 0);;

    string = tail;
    i++;
  }

  return index_of_number(number, arrayOfLongs);
}

//int main(){
//  int numberToFind, numberOfLongsInArray;
//  char string[10000];
//
//  scanf("%d %d %[^\n]s", &numberToFind, &numberOfLongsInArray, &string);
//
//  int result;
//  result = index_of_number_from_string(numberToFind, string, numberOfLongsInArray);
//
//  printf("%d\n", result);
//}
