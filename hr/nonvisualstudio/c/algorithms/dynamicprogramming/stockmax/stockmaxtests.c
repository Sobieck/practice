#include "seatest.h"
#include <stdbool.h>
#include <string.h>


void single(){
  int size = 1;
  int array[] = { 1 };

  long number = max_profit(array, size);

  assert_ulong_equal(0, number);
}

void no_profit(){
  int size = 5;
  int array[] = { 9, 8, 5, 4, 3};

  long number = max_profit(array, size);

  assert_ulong_equal(0, number);
}

void one_dollar_profit(){
  int size = 5;
  int array[] = { 9, 8, 5, 4, 5};

  long number = max_profit(array, size);

  assert_ulong_equal(1, number);
}

void two_profit_points(){
  int size = 5;
  int array[] = { 9, 1000, 5, 4, 5};

  long number = max_profit(array, size);

  long profit = 1 + (1000 - 9);

  assert_ulong_equal(profit, number);
}

void four_profit_points(){
  long size = 11;
  int array[] = { 1000000, 149, 150, 130, 132, 149, 120, 0, 148, 9, 100 };

  long profit = max_profit(array, size);

  long expectedProfit = 1 + 19 + (149 - 132) + 148 + 28 + 91;

  assert_ulong_equal(expectedProfit, profit);
}


void run(){
  test_fixture_start();

  run_test(single);
  run_test(no_profit);
  run_test(one_dollar_profit);
  run_test(two_profit_points);
  run_test(four_profit_points);


  test_fixture_end();
}

long main(long argc, char** argv){
  return run_tests(run);
}
