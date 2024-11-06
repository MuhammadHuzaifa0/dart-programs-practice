class Student {
  String name;
  int age;
  int marks;

  Student({required this.name, required this.age, required this.marks});

  @override
  String toString() {
    return 'Student { Name: $name, Age: $age, Marks: $marks }';
  }
}

void main() {
  // List to store Student objects
  List<Student> myObjects = [];

  // Adding students to the list
  myObjects.add(Student(name: 'Alice', age: 25, marks: 55));
  myObjects.add(Student(name: 'Bob', age: 30, marks: 50));
  myObjects.add(Student(name: 'Alice', age: 27, marks: 40));
  myObjects.add(Student(name: 'Charlie', age: 22, marks: 45));

  // Using `where` and `forEach` to filter and display students based on the conditions
  myObjects
      .where((student) =>
          (student.name == 'Alice' || student.name == 'Bob') &&
          student.age > 25 &&
          student.marks >= 50)
      .forEach((student) => print(student));
}
