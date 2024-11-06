void main() {
  // Function call with named parameters
  addition(a: 20, b: 20);
}

// Function definition with named parameters
void addition({required int a, required int b}) {
  int c = a + b;
  print('The sum of two numbers is: $c');
}
