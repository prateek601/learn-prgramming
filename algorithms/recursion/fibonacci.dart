//Program to print the fibonacci series
//Time complexity is 2 to the power n. How?
//Space complextiy is n.
void main() {
  int n = 6;

  for (int i = 0; i < n; i++) {
    print(fibonacci(i));
  }
}

int fibonacci(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1 || n == 2) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
