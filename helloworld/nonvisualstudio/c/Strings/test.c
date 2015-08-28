#include <stdio.h>
#include <string.h>

int main(){

  char method[] = "helos";
  char stuff[] = "asfk";

  second(method, stuff);

  return 0;
}

int second(char stringOne[], char stringTwo[]){

  int length1 = strlen(stringOne);
  int length2 = strlen(stringTwo);

  int totalLength = length2 + length1 + 1;

  char string3[totalLength];

  strcat(string3, stringOne);
  strcat(string3, stringTwo);

  printf("%s\n", string3);
}

int first(){
  char mystring[3];

  mystring[0] = 'J';
  mystring[1] = 'a';

  printf("%s\n", mystring);
}
