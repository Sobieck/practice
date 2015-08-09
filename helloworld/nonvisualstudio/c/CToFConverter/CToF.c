#include <string.h>

double convert_to_fahrenheit(double degrees){
  return degrees * 9 / 5 + 32;
}

double convert_to_celsius(double fdegrees){
  return (fdegrees - 32) * 5 / 9;
}
