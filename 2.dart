void main() {
  // Initializing a list of maps with name and age records
  List<Map<String, dynamic>> records = [
    {'name': 'Ali', 'age': 30},
    {'name': 'xyz', 'age': 25},
    {'name': 'Chik', 'age': 25},
    {'name': 'xyz', 'age': 20},
    {'name': 'Ali', 'age': 22},
  ];

  // Sorting by name first, then by age
  records.sort((a, b) {
    // Compare by name
    int nameComparison = a['name'].compareTo(b['name']);
    if (nameComparison != 0) {
      return nameComparison;
    }
    // If names are the same, compare by age
    return a['age'].compareTo(b['age']);
  });

  // Printing the sorted list
  print('Sorted records:');
  for (var record in records) {
    print('Name: ${record['name']}, Age: ${record['age']}');
  }
}
