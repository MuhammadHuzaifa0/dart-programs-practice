// Write a program that takes the command line arguments of types string, integer and decimal value.
// In case of a string, its length should be displayed, for an integer value, it should be multiplied by 100,
// and for a decimal value, we need to take its power of 3.

void main(List<String> args) {
  if (args.isEmpty) {
    print('Please provide a command line argument.');
    return;
  }

  for (var arg in args) {
    // Try parsing as an integer
    var intValue = int.tryParse(arg);
    if (intValue != null) {
      print('Integer: $intValue, multiplied by 100: ${intValue * 100}');
      continue;
    }

    // Try parsing as a double
    var doubleValue = double.tryParse(arg);
    if (doubleValue != null) {
      print(
          'Decimal: $doubleValue, raised to the power of 3: ${doubleValue * doubleValue * doubleValue}');
      continue;
    }

    // Otherwise, treat it as a string
    print('String: $arg, length: ${arg.length}');
  }
}
