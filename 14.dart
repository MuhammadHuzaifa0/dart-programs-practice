// Define the typedef for operations
typedef MathOperation = double Function(double a, double b);

void main() {
  // Define the functions for the operations
  MathOperation add = (a, b) => a + b;
  MathOperation subtract = (a, b) => a - b;
  MathOperation multiply = (a, b) => a * b;
  MathOperation divide = (a, b) {
    if (b == 0) {
      print("Error: Division by zero");
      return double.nan; // Return NaN for division by zero
    }
    return a / b;
  };

  // Test the calculator with some examples
  double num1 = 10;
  double num2 = 5;

  print("Addition: ${add(num1, num2)}"); // Output: 15.0
  print("Subtraction: ${subtract(num1, num2)}"); // Output: 5.0
  print("Multiplication: ${multiply(num1, num2)}"); // Output: 50.0
  print("Division: ${divide(num1, num2)}"); // Output: 2.0
  print(
      "Division by zero: ${divide(num1, 0)}"); // Output: Error: Division by zero, NaN
}
