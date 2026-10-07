// exam_record.dart
class ExamRecord {
  String courseCode;
  String courseName;
  double score;
  late String grade;
  ExamRecord(this.courseCode, this.courseName, this.score) {
    grade = calculateGrade();
  }
  String calculateGrade() {
    if (score >= 80) return 'A';
    if (score >= 70) return 'B';
    if (score >= 60) return 'C';
    if (score >= 50) return 'D';
    return 'F';
  }
  void displayRecord() {
    print('  $courseCode - $courseName: $score ($grade)');
  }
}