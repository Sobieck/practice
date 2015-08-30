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
  int arrayOfLongs[numberOfLongsInArray];

  int i = 0;

  for(i; i < numberOfLongsInArray; i++){
    arrayOfLongs[i] = i;
  }

  char *tail;

  printf("%d\n", numberOfLongsInArray);
  printf("%d\n", sizeof(arrayOfLongs));

  i = 0;

  while(i != numberOfLongsInArray){
    long next;

    while(isspace(*string)) string++; //skip space

    next = strtol(string, &tail, 0);

    arrayOfLongs[i] = next;
    i++;
  }

  //for(j = 0; j < (sizeof(arrayOfLongs)); j++){
  //  printf("%d\n", arrayOfLongs[j]);
  //}

  return index_of_number(number, arrayOfLongs);
}
