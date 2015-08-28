#include <stdio.h>
#include "minunit.c"

double convert_to_fahrenheit(double);
double convert_to_celsius(double);

int tests_run = 0;

static char * convert_to_celsius_should_return_34_when_input_is_93_2(){
  double degrees = convert_to_celsius(93.2);
  mu_assert("error, celsius conversion != 34", degrees == 32);
  return 0;
}

static char * convert_to_celsius_should_return_0_when_input_is_32(){
  double degrees = convert_to_celsius(32);
  mu_assert("error, celsius conversion != 0", degrees == 0.0);
  return 0;
}

static char * convert_to_fahrenheit_should_return_93_2_when_input_is_34(){
  double degrees = convert_to_fahrenheit(34.0);
  mu_assert("error, fahrenheit conversion != 93.2", degrees == 93.2);
  return 0;
}

static char * convert_to_fahrenheit_should_return_32_when_input_is_0() {
  double degrees = convert_to_fahrenheit(0);
  mu_assert("error, fahrenheit conversion != 32", degrees == 32.0);
  return 0;
}

static char * all_tests() {
  mu_run_test(convert_to_fahrenheit_should_return_93_2_when_input_is_34);
  mu_run_test(convert_to_fahrenheit_should_return_32_when_input_is_0);

  mu_run_test(convert_to_celsius_should_return_0_when_input_is_32);
  mu_run_test(convert_to_celsius_should_return_34_when_input_is_93_2);
  return 0;
}

int main(int argc, char **argv) {
  char *result = all_tests();
  if (result != 0) {
    printf("%s\n", result);
  }
  else {
    printf("ALL TESTS PASSED\n");
  }
  printf("Tests run: %d\n", tests_run);

  return result != 0;
}
