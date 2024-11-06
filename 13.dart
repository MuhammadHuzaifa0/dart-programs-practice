void main() {
  List<String> fruits = ['apples', 'bananas', 'oranges'];
  String appendString = " fruit";

  // Use map to append the string and capitalize each element
  List<String> updatedFruits = fruits.map((fruit) {
    return (fruit + appendString).toUpperCase(); // Append and capitalize
  }).toList();

  // Use forEach to print the updated list
  updatedFruits.forEach((fruit) {
    print(fruit); // Prints each element of the updated list
  });
}
