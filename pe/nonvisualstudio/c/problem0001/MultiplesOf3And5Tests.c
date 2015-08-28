#include "seatest.h"
#include <stdbool.h>

void five_should_not_be_divisible_by_3(){

  bool result = is_divisible_by_3(5);

  assert_false(result);
}

void six_should_be_divisible_by_3(){

  bool result = is_divisible_by_3(6);

  assert_true(result);
}

void six_should_not_be_divisible_by_5(){

  bool result = is_divisible_by_5(6);

  assert_false(result);
}

void twenty_should_be_divisible_by_5(){

  bool result = is_divisible_by_5(20);

  assert_true(result);
}

void sum_of_numbers_below_10_should_return_23(){

  int result = sum_of_numbers_below(10);

  assert_int_equal(23, result);
}

void sum_of_numbers_below_21_should_return_98(){

  int result = sum_of_numbers_below(21);

  assert_int_equal(98, result);
}

void sum_of_numbers_below_1000(){

  int result = sum_of_numbers_below(1000);

  assert_int_equal(233168, result);
}

void run(){
  test_fixture_start();
  run_test(five_should_not_be_divisible_by_3);
  run_test(six_should_be_divisible_by_3);

  run_test(six_should_not_be_divisible_by_5);
  run_test(twenty_should_be_divisible_by_5);

  run_test(sum_of_numbers_below_21_should_return_98);
  run_test(sum_of_numbers_below_10_should_return_23);

  run_test(sum_of_numbers_below_1000);

  test_fixture_end();
}

int main(int argc, char** argv){
  return run_tests(run);
}
