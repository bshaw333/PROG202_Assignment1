// main.dart - LUCT Exam Result Management System
import 'student.dart';
import 'exam_record.dart';
import 'results_manager.dart';

void main() {
  print('=== LUCT Exam Result Management System ===\n');
  var student1 = Student('905004671', 'Amadu Wurie Bantama Shaw', 'BSc IT', 2);
  var manager = ResultsManager(student1);
  var rec1 = ExamRecord('PROG202', 'Software Engineering', 75.5);
  var rec2 = ExamRecord('PROG211', 'Python Programming', 82.0);
  var rec3 = ExamRecord('PROG205', 'Database Systems', 68.0);
  manager.addRecord(rec1);
  manager.addRecord(rec2);
  manager.addRecord(rec3);
  manager.generateTranscript();
  print('Prototype successful - Ready for Flutter + Supabase in Assignment 2');
}