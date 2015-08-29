#include "seatest.h"
#include <stdbool.h>

void is_even_1_should_return_false(){

  bool result = is_even(1);

  assert_false(result);
}

void is_even_10_should_return_true(){

  bool result = is_even(10);

  assert_true(result);
}

void sum_of_even_fibs_under_10_should_return_10(){

  int result = sum_of_even_fibs_under(10);

  assert_int_equal(10, result);
}

void sum_of_even_fibs_under_100_should_return_44(){

  int result = sum_of_even_fibs_under(100);

  assert_int_equal(44, result);
}

void sum_of_even_fibs_under_4000000_should_return_4613732(){

  int result = sum_of_even_fibs_under(4000000);

  assert_int_equal(4613732, result);
}

void sum_of_even_fibs_under_34_should_return_10(){

  int result = sum_of_even_fibs_under(34);

  assert_int_equal(10, result);
}


void run(){
  test_fixture_start();

  run_test(is_even_1_should_return_false);
  run_test(is_even_10_should_return_true);

  run_test(sum_of_even_fibs_under_4000000_should_return_4613732);
  run_test(sum_of_even_fibs_under_100_should_return_44);
  run_test(sum_of_even_fibs_under_10_should_return_10);
  run_test(sum_of_even_fibs_under_34_should_return_10);

  test_fixture_end();
}

int main(int argc, char** argv){
  return run_tests(run);
}
