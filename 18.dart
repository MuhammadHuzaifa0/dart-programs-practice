void main() {
  const list = [
    '0.5',
    '5545',
    'hamza',
    'umer',
    'ki am good',
    'ali',
    'chair',
    'karachi'
  ];

  list
      .map((item) => item.toLowerCase())
      .forEach((item) => print("$item:${item.length}"));
}
