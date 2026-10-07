// student.dart
class Student {
  String studentId;
  String fullName;
  String program;
  int year;
  Student(this.studentId, this.fullName, this.program, this.year);
  void displayInfo() {
    print('ID: $studentId');
    print('Name: $fullName');
    print('Program: $program');
    print('Year: $year');
  }
}