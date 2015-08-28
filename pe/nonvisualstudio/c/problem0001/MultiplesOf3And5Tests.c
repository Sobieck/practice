#include "seatest.h"
#include <stdbool.h>

bool is_divisible_by_3(int);

void five_should_not_be_divisible_by_3(){

  bool result = is_divisible_by_3(5);

  assert_false(result);
}

void six_should_be_divisible_by_3(){

  bool result = is_divisible_by_3(6);

  assert_true(result);
}

void run(){
  test_fixture_start();
  run_test(five_should_not_be_divisible_by_3);
  run_test(six_should_be_divisible_by_3);
  test_fixture_end();
}

int main(int argc, char** argv){
  return run_tests(run);
}
