// Base class Person
class Person {
  int id;
  String name;
  int age;

  Person(this.id, this.name, this.age);
}

// Derived class Student
class Student extends Person {
  double cgpa;
  String currentlyEnrolledSemester;
  DateTime admissionDate;

  Student(int id, String name, int age, this.cgpa,
      this.currentlyEnrolledSemester, this.admissionDate,
      {required String name, required int age, required int marks})
      : super(id, name, age);

  @override
  String toString() {
    return 'Student { ID: $id, Name: $name, Age: $age, CGPA: $cgpa, Semester: $currentlyEnrolledSemester, Admission Date: $admissionDate }';
  }
}

// Derived class Teacher
class Teacher extends Person {
  double salary;
  String designation;
  String department;
  DateTime joiningDate;

  Teacher(int id, String name, int age, this.salary, this.designation,
      this.department, this.joiningDate)
      : super(id, name, age);

  @override
  String toString() {
    return 'Teacher { ID: $id, Name: $name, Age: $age, Salary: $salary, Designation: $designation, Department: $department, Joining Date: $joiningDate }';
  }
}

// Function to search a person by id
Person? searchPersonById(List<Person> persons, int id) {
  for (var person in persons) {
    if (person.id == id) {
      return person;
    }
  }
  return null; // If no person found with that id
}

void main() {
  // Create a list to store Person objects (students and teachers)
  List<Person> people = [];

  // Add some students to the list
  people.add(Student(1, 'Ali', 20, 3.8, 'FA22', DateTime(2020, 9, 1)));
  people.add(Student(2, 'Sara', 22, 3.5, 'SP22', DateTime(2019, 8, 1)));
  people.add(Student(3, 'John', 21, 3.9, 'FA22', DateTime(2020, 8, 1)));

  // Add some teachers to the list
  people.add(Teacher(101, 'Dr. Ahmed', 45, 5000, 'Lecturer', 'Computer Science',
      DateTime(2015, 7, 1)));
  people.add(Teacher(102, 'Dr. Khan', 50, 8000, 'Assistant Professor',
      'Physics', DateTime(2010, 5, 15)));
  people.add(Teacher(103, 'Dr. Ali', 40, 7500, 'Professor', 'Mathematics',
      DateTime(2012, 3, 10)));

  // Search for a person by ID
  int searchId = 2; // Example ID to search
  var foundPerson = searchPersonById(people, searchId);
  if (foundPerson != null) {
    print('Person found: $foundPerson');
  } else {
    print('No person found with ID $searchId');
  }

  // Print list of students whose CGPA is greater than 3.7
  print('\nList of students with CGPA greater than 3.7:');
  for (var person in people) {
    if (person is Student && person.cgpa > 3.7) {
      print(person);
    }
  }
}
