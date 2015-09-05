#include "seatest.h"
#include <stdbool.h>
#include <string.h>

void array_equal(int arraySize, int * expectedArray, int * actualArray){
  int i = 0;

  for (i; i < arraySize; i++) {
      int expected = expectedArray[i];
      int actual = actualArray[i];

      assert_int_equal(expected, actual);
  }
}

void should_return_already_sorted_array(){
  int size = 1;
  int array[size];

  array[0] = 0;

  int* result = insertion(size, array);

  array_equal(size, array, result);
}

void should_return_already_sorted_array_2_large(){
  int size = 2;
  int array[] = { 0, 1 };

  int* result = insertion(size, array);

  array_equal(size, array, result);
}

void should_return_sorted_array_from_unsorted_2_long(){
  int size = 2;
  int array[] = { 1, 0};

  int* result = insertion(size, array);

  int expected[] = { 0, 1};

  array_equal(size, expected, result);
}

void should_return_sorted_array_from_unsorted_3_long(){
  int size = 3;
  int array[] = { 0, 10, 3};

  int* result = insertion(size, array);

  int expected[] = { 0, 3, 10};

  array_equal(size, expected, result);
}

void should_return_sorted_array_from_unsorted_4_long(){
  int size = 4;
  int array[] = { 1, 10, 13, 0};

  int* result = insertion(size, array);

  int expected[] = { 0, 1, 10, 13};

  array_equal(size, expected, result);
}

void example_problem(){
  int size = 5;
  int array[] = { 2, 4, 6, 8, 3};

  int* result = insertion(size, array);

  int expected[] = {2, 3, 4, 6, 8};

  array_equal(size, expected, result);
}

void run(){
  test_fixture_start();

  run_test(should_return_already_sorted_array);
  run_test(should_return_already_sorted_array_2_large);

  run_test(should_return_sorted_array_from_unsorted_2_long);
  run_test(should_return_sorted_array_from_unsorted_3_long);
  run_test(should_return_sorted_array_from_unsorted_4_long);

  run_test(example_problem);

  test_fixture_end();
}

long main(long argc, char** argv){
  return run_tests(run);
}
