// results_manager.dart
import 'student.dart';
import 'exam_record.dart';

class ResultsManager {
  Student student;
  List<ExamRecord> records = [];
  ResultsManager(this.student);
  void addRecord(ExamRecord record) {
    records.add(record);
    print('Record Added: ${record.courseCode}');
  }
  double calculateAverage() {
    if (records.isEmpty) return 0.0;
    double total = 0;
    for (var r in records) { total += r.score; }
    return total / records.length;
  }
  void generateTranscript() {
    print('\n========== TRANSCRIPT ==========');
    student.displayInfo();
    print('---------------------------------');
    for (var r in records) { r.displayRecord(); }
    print('---------------------------------');
    print('Average: ${calculateAverage().toStringAsFixed(2)}');
    print('Status: ${calculateAverage() >= 50 ? "PASS" : "FAIL"}');
    print('=================================\n');
  }
}