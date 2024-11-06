void main() {
  int marks = 65;
  String grade;
  switch (marks) {
    case var m when (m >= 10 && m <= 30):
      grade = 'E';

      break;
    case var m when (m >= 31 && m <= 50):
      grade = 'D';

      break;
    case var m when (m >= 51 && m <= 70):
      grade = 'D';

      break;
    case var m when (m >= 71 && m <= 90):
      grade = 'D';

      break;
    case var m when (m >= 91 && m <= 100):
      grade = 'D';

      break;

    default:
      grade = 'invalid marks';
  }
  print('Grade:$grade');
}
