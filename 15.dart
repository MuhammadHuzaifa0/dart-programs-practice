void main() {
  List<Map<String, String>> myArray = [
    {'name': 'ali', 'age': '45'},
    {'name': 'noman', 'age': '34'},
  ];

//   Display the key and value of array elements.
  for (var map in myArray) {
    map.forEach((key, value) {
      print('key:$key and value:$value');
    });
  }

  print('\nvalue in array');
// Display the values of the array
  for (var map in myArray) {
    map.forEach((key, value) {
      print(value);
    });
  }
}
