void main() {
  // Example values
  double x = 3;
  double y = 4;
  double p = 2;
  double q = 5;

  // Calculate Z
  double Z = calculateZ(x, y, p, q);
  print("Value of Z: $Z");
}

//  Function to calculate Z = x^2 + 4y^2 - 8 * N^2
double calculateZ(double x, double y, double p, double q) {
  // Arrow function for N = p^2 + q^2
  double N() => p * p + q * q; // Correct arrow function for N

  return x * x + 4 * y * y - 8 * N() * N(); // Use N() to get the value of N
}
