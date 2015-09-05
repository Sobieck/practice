#include "seatest.h"
#include <stdbool.h>
#include <string.h>


void single(){
  int size = 1;
  int array[] = { 1 };

  long number = max_profit(array, size);

  assert_ulong_equal(number, 0);
}

void no_profit(){
  int size = 5;
  int array[] = { 9, 8, 5, 4, 3};

  long number = max_profit(array, size);

  assert_ulong_equal(number, 0);
}

void one_dollar_profit(){
  int size = 5;
  int array[] = { 9, 8, 5, 4, 5};

  long number = max_profit(array, size);

  assert_ulong_equal(number, 1);
}

void run(){
  test_fixture_start();

  run_test(single);
  run_test(no_profit);
  run_test(one_dollar_profit);


  test_fixture_end();
}

long main(long argc, char** argv){
  return run_tests(run);
}
