#include "seatest.h"
#include <stdbool.h>

void test_one(){

  assert_true(false);
}

void run(){
  test_fixture_start();
  run_test(test_one);

  test_fixture_end();
}

int main(int argc, char** argv){
  return run_tests(run);
}
