#include "seatest.h"
#include <stdbool.h>
#include <string.h>
#include <stdio.h>

void create_matrix_1(){
  int number_of_verticies = 2;
  int number_of_edges = 1;

  int pairs[1][2] = { { 1, 2 } };

  int matrix[2][2];

  create_matrix(number_of_edges, number_of_verticies, pairs, matrix);

  int result1 = matrix[0][0];
  int result2 = matrix[0][1];
  int result3 = matrix[1][0];
  int result4 = matrix[1][1];

  assert_int_equal(0, result1);
  assert_int_equal(1, result2);
  assert_int_equal(1, result3);
  assert_int_equal(0, result4);
}

void create_matrix_2_should_sum_to_correct_values(){
  int number_of_verticies = 4;
  int number_of_edges = 3;

  int pairs[3][2] = { { 1, 2 }, { 1, 3 }, { 3, 4 } };

  int matrix[number_of_verticies][number_of_verticies];

  create_matrix(number_of_edges, number_of_verticies, pairs, matrix);

  int i, j;
  int sums[number_of_verticies];

  for (i = 0; i < number_of_verticies; i++) {
    sums[i] = 0;
    for (j = 0; j < number_of_verticies; j++) {
      sums[i] += matrix[i][j];
    }
  }

  assert_int_equal(2, sums[0]);
  assert_int_equal(1, sums[1]);
  assert_int_equal(2, sums[2]);
  assert_int_equal(1, sums[3]);
}

void create_matrix_2_should_put_down_proper_1s(){
  int number_of_verticies = 4;
  int number_of_edges = 3;

  int pairs[3][2] = { { 1, 2 }, { 1, 3 }, { 3, 4 } };

  int matrix[number_of_verticies][number_of_verticies];

  create_matrix(number_of_edges, number_of_verticies, pairs, matrix);

  int edges[6];

  edges[0] = matrix[0][1];
  edges[1] = matrix[1][0];
  edges[2] = matrix[0][2];
  edges[3] = matrix[2][0];
  edges[4] = matrix[2][3];
  edges[5] = matrix[3][2];

  int i = 0;

  for (i; i < number_of_edges * 2; i++) {
    assert_int_equal(1, edges[i]);
  }
}

void calculate_cuts_from_example(){
  int number_of_verticies = 10;
  int number_of_edges = 9;

  int pairs[9][2] = { { 1, 2 }, { 1, 3 }, { 3, 4 }, {5, 2}, {6, 1}, {7, 2}, {8, 6}, {9, 8}, {10, 8} };

  int cuts = calculate_cuts(number_of_edges, number_of_verticies, pairs);

  assert_int_equal(2, cuts);
}

void calculate_cuts_from_example_2(){
  int number_of_verticies = 20;
  int number_of_edges = 19;

  int pairs[19][2] = {
    { 2, 1 },
    { 3, 1 },
    { 4, 3 },
    { 5, 2 },
    { 6, 5 },
    { 7, 1 },
    { 8, 1 },
    { 9, 2 },
    { 10, 7 },
    { 11, 10 },
    { 12, 3 },
    { 13, 7 },
    { 14, 8 },
    { 15, 12 },
    { 16, 6 },
    { 17, 6 },
    { 18, 10 },
    { 19, 1 },
    { 20, 8 }};

  int cuts = calculate_cuts(number_of_edges, number_of_verticies, pairs);

  assert_int_equal(4, cuts);
}



void calculate_cuts_from_example_5(){
  FILE * fr;

  fr = fopen("C:/GitHub/practice/hr/problemsets/even-tree-test-5-answer-18.txt", "rt");

  int verticies, edges;
  fscanf(fr, "%d", &verticies);
  fscanf(fr, "%d", &edges);

  int pairs[edges][2];

  int i, j;
  for (i = 0; i < edges; i++) {
    for (j = 0; j < 2; j++) {
      int currentNumber;
      fscanf(fr, "%d", &currentNumber);
      pairs[i][j] = currentNumber;
    }
  }
  fclose(fr);

  int result = calculate_cuts(edges, verticies, pairs);

  assert_int_equal(18, result);
}

void calculate_cuts_from_example_9(){
  FILE * fr;

  fr = fopen("C:/GitHub/practice/hr/problemsets/even-tree-test-9-answer-31.txt", "rt");

  int verticies, edges;
  fscanf(fr, "%d", &verticies);
  fscanf(fr, "%d", &edges);

  int pairs[edges][2];

  int i, j;
  for (i = 0; i < edges; i++) {
    for (j = 0; j < 2; j++) {
      int currentNumber;
      fscanf(fr, "%d", &currentNumber);
      pairs[i][j] = currentNumber;
    }
  }
  fclose(fr);

  int result = calculate_cuts(edges, verticies, pairs);

  assert_int_equal(31, result);
}

void run(){
  test_fixture_start();

  //run_test(create_matrix_1);
  //run_test(create_matrix_2_should_sum_to_correct_values);
  //run_test(create_matrix_2_should_put_down_proper_1s);

  //run_test(calculate_cuts_from_example);
  //run_test(calculate_cuts_from_example_2);
  //run_test(calculate_cuts_from_example_5);
  run_test(calculate_cuts_from_example_9);

  test_fixture_end();
}

long main(long argc, char** argv){
  return run_tests(run);
}
