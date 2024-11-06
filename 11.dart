void main() {
  double n = 4;
  double q = 7;
  double a = 8;
  double b = 5;
  double x = 2;
  double y = 9;
  double p = 3;

  double B = calculateB(n, q);
  print('value of B is:$B');

  double Z = calculateZ(a, B, b);
  print('value of Z is:$Z');

  double A = calculateA(x, y, p, Z);
  print('value of A is:$A');
}

double calculateB(double n, double q) => n * n + q * n + 1;
double calculateZ(double a, double B, double b) =>
    a * a + 4 * B - 8 * b + 2 * a;
double calculateA(double x, double y, double p, double Z) =>
    x * x + 2 * x * y + p * Z;
