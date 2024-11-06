void main() {
  List<Map<String, dynamic>> items = [
    {"name": "Ali", "age": 45, "marks": 32},
    {"name": "Noman", "age": 32, "marks": 23},
    {"name": "Faisal", "age": 41, "marks": 43},
    {"name": "Noman", "age": 11, "marks": 43},
    {"name": "Faisal", "age": 8, "marks": 43},
  ];

  var filteredItems = items
      .where((item) =>
          item['age'] > 30 &&
          (item['name'] == 'Noman' || item['name'] == 'Faisal'))
      .toList();

  print(filteredItems);
}
