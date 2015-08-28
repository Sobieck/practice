#include <stdbool.h>

bool is_divisible(int num, int denom){
  int remainder = num % denom;

  if (remainder == 0) {
    return true;
  }

  return false;
}

bool is_divisible_by_5(int number){
  return is_divisible(number, 5);
}

bool is_divisible_by_3(int number){
  return is_divisible(number, 3);
}

int sum_of_numbers_below(int number){

  int i = 0;
  int sum = 0;

  for (i = 0; i < number; i++) {
    bool isDivisibleBy5 = is_divisible_by_5(i);
    bool isDivisibleBy3 = is_divisible_by_3(i);

    if(isDivisibleBy5){
      sum += i;
    }
    else if(isDivisibleBy3){
      sum += i;
    }
  }

  return sum;
}
