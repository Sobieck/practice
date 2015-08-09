#include <stdio.h>
#include "minunit.c"

int tests_run = 0;

static char * convert_to_fahrenheit_should_return_93_2_when_input_is_34(){
  double degrees = convert_to_fahrenheit(34.0);
  printf("%f\n", degrees);
  mu_assert("error, fahrenheit conversion != 93.2", degrees == 93.2);
  return 0;
}

static char * convert_to_fahrenheit_should_return_32_when_input_is_0() {
  double degrees = convert_to_fahrenheit(0);
  printf("%f\n", degrees);
  mu_assert("error, fahrenheit conversion != 32", degrees == 32.0);
  return 0;
}
static char * all_tests() {
  mu_run_test(convert_to_fahrenheit_should_return_93_2_when_input_is_34);
  mu_run_test(convert_to_fahrenheit_should_return_32_when_input_is_0);
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
