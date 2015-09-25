#include "seatest.h"
#include <stdbool.h>

void same_as_digit_powers_1635_4_should_be_false(){

  bool result = same_as_digit_powers(1635, 4);

  assert_false(result);
}

void same_as_digit_powers_1634_4_should_be_true(){

  bool result = same_as_digit_powers(1634, 4);

  assert_true(result);
}

void same_as_digit_powers_8208_4_should_be_true(){

  bool result = same_as_digit_powers(8208, 4);

  assert_true(result);
}

void test(){
  int mod = 1634 % 10;
  int divi = 1634 / 10;

  assert_int_equal(4, mod);
  assert_int_equal(163, divi);
}

void run(){
  test_fixture_start();

  //run_test(same_as_digit_powers_1635_4_should_be_false);
  //run_test(same_as_digit_powers_1634_4_should_be_true);
  //run_test(same_as_digit_powers_8208_4_should_be_true);
  run_test(test);

  test_fixture_end();
}

int main(int argc, char** argv){
  return run_tests(run);
}
