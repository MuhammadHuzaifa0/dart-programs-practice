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
  myObjects.add(Student(name: "Ali", age: 45, marks: 32));
  myObjects.add(
    Student(name: "Faisal", age: 41, marks: 43),
  );
  myObjects.add(
    Student(name: "Noman", age: 11, marks: 43),
  );
  myObjects.add(Student(name: "Faisal", age: 8, marks: 43));

  // Using `where` and `forEach` to filter and display students based on the conditions
  myObjects
      .where((student) =>
          (student.name == 'Noman' || student.name == 'Faisal') &&
          student.age > 30 &&
          student.marks < 0)
      .forEach((student) => print(student));
}
