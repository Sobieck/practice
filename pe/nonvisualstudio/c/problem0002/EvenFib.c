#include <stdbool.h>

bool is_even(int number){
  int remainder = number % 2;

  if(remainder == 0){
    return true;
  }

  return false;
}

int sum_of_even_fibs_under(int upperbound){

  int sum = 0;

  int currentFib = 1;
  int previousFib = 1;

  while(currentFib <= upperbound){

    bool isEven = is_even(currentFib);

    if(isEven){
      sum += currentFib;
    }

    int oldCurrentFib = currentFib;
    currentFib += previousFib;
    previousFib = oldCurrentFib;

  }

  return sum;
}
