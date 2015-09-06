#include "seatest.h"
#include <stdbool.h>
#include <string.h>

void one_cycle(){
  int cycles = 1;

  long result = utopian_tree(cycles);

  assert_ulong_equal(2, result);
}

void zero_cycles(){
  int cycles = 0;

  long result = utopian_tree(cycles);

  assert_ulong_equal(1, result);
}

void two_cycles(){
  int cycles = 2;

  long result = utopian_tree(cycles);

  assert_ulong_equal(3, result);
}

void three_cycles(){
  int cycles = 3;

  long result = utopian_tree(cycles);

  assert_ulong_equal(6, result);
}

void four_cycles(){
  int cycles = 4;

  long result = utopian_tree(cycles);

  assert_ulong_equal(7, result);
}

void five_cycles(){
  int cycles = 5;

  long result = utopian_tree(cycles);

  assert_ulong_equal(14, result);
}

void run(){
  test_fixture_start();

  run_test(zero_cycles);
  run_test(one_cycle);
  run_test(two_cycles);
  run_test(three_cycles);
  run_test(four_cycles);
  run_test(five_cycles);

  test_fixture_end();
}

long main(long argc, char** argv){
  return run_tests(run);
}
