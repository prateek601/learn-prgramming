/// program for finding factorial of a number n using Recursion
///

void main() {
  int x = 5;

  int output = factorial(x);
  print(output);
}

int factorial(int n) {
  int result;
  if (n == 0 || n == 1) {
    return 1;
  }

  result = n * factorial(n - 1);

  return result;
}
