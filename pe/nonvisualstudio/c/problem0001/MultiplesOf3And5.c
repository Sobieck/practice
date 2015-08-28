#include <stdbool.h>

bool is_divisible(int num, int denom){
  int remainder = num % denom;

  if (remainder == 0) {
    return true;
  }

  return false;
}

bool is_divisible_by_3(int number){
  return is_divisible(number, 3);
}
