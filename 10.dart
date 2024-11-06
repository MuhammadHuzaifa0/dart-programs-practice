void main() {
  double a = 5;
  double b = 5;
  double p = 5;
  double t = 5;

  double A = calculateA(a, b);
  print('value of A :$A');
  double Z = calculateZ(p, t, A);
  print('value of Z is:$Z');
}

double calculateA(double a, double b) => a * a + b * b * b;
double calculateZ(double p, double t, double A) => p * p + 5 * t + A;
