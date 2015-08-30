#include "seatest.h"
#include <stdbool.h>
#include <string.h>

void index_of_number_0__0_should_return_0(){
  long numberToFind = 0;
  long array[1] = { 0 };

  long result = index_of_number(numberToFind, array);

  assert_int_equal(0, result);
}

void index_of_number_1__0_1_should_return_1(){
  long numberToFind = 1;
  long array[2] = { 0, 1 };

  long result = index_of_number(numberToFind, array);

  assert_int_equal(1, result);
}

void index_of_number_3__0_1_3_should_return_2(){
  long numberToFind = 3;
  long array[3] = { 0, 1, 3 };

  long result = index_of_number(numberToFind, array);

  assert_int_equal(2, result);
}

void index_of_number_from_string_0__0_should_return_0(){
  long numberToFind = 0;
  char array[2] = "0";
  long numberOfLongsInArray = 1;

  long result = index_of_number_from_string(numberToFind, array, numberOfLongsInArray);

  assert_int_equal(0, result);
}

void index_of_number_from_string_1__0_1_should_return_1(){
  long numberToFind = 1;
  char array[3] = "0 1";
  long numberOfLongsInArray = 2;

  long result = index_of_number_from_string(numberToFind, array, numberOfLongsInArray);

  assert_int_equal(1, result);
}

void index_of_number_from_string_3__0_1_3_should_return_2(){
  long numberToFind = 3;
  char array[6] = "0 1 3";
  long numberOfLongsInArray = 3;

  long result = index_of_number_from_string(numberToFind, array, numberOfLongsInArray);

  assert_int_equal(2, result);
}

void run(){
  test_fixture_start();

  run_test(index_of_number_0__0_should_return_0);
  run_test(index_of_number_1__0_1_should_return_1);
  run_test(index_of_number_3__0_1_3_should_return_2);

  run_test(index_of_number_from_string_0__0_should_return_0);
  run_test(index_of_number_from_string_1__0_1_should_return_1);
  run_test(index_of_number_from_string_3__0_1_3_should_return_2);

  test_fixture_end();
}

long main(long argc, char** argv){
  return run_tests(run);
}
