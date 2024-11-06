void main() {
  List<Map<String, dynamic>> items = [
    {"position": 10, "name": "Jawad"},
    {"position": 33, "name": "Faisal"},
    {"position": 4, "name": "Zahid"},
    {"position": 6, "name": "Ali"},
    {"position": 9, "name": "Noman"},
    {"position": 4, "name": "Ben"},
  ];

  items.sort((a, b) {
    if (a['position'] == b['position']) {
      return (a['name'] as String).compareTo(b['name'] as String);
    } else {
      return (a['position'] as int).compareTo(b['position'] as int);
    }
  });

  print(items);
}
