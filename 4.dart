void main() {
  List<int> numbers = [10, 20, 30, 40];

  int result = numbers.reduce((value, element) => value + element);
  print('sum of all list; $result');
}
