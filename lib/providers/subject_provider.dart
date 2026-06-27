import 'package:flutter/material.dart';
import '../models/subject.dart';

class SubjectProvider extends ChangeNotifier {

  // Private List
  final List<Subject> _subjects = [];

  // Getter
  List<Subject> get subjects => _subjects;

  // Add Subject
  void addSubject(String name, double mark) {
    _subjects.add(
      Subject(
        name: name,
        mark: mark,
      ),
    );

    notifyListeners();
  }

  // Delete Subject
  void removeSubject(int index) {
    _subjects.removeAt(index);
    notifyListeners();
  }

  // Total Subjects
  int get totalSubjects => _subjects.length;

  // Average Marks
  double get averageMark {
    if (_subjects.isEmpty) return 0;

    double total = _subjects
        .map((subject) => subject.mark)
        .reduce((a, b) => a + b);

    return total / _subjects.length;
  }

  // Passing Subjects (where() use)
  List<Subject> get passingSubjects {
    return _subjects
        .where((subject) => subject.mark >= 50)
        .toList();
  }

  // Overall Grade
  String get overallGrade {
    double avg = averageMark;

    if (avg >= 80) {
      return "A";
    } else if (avg >= 65) {
      return "B";
    } else if (avg >= 50) {
      return "C";
    } else {
      return "F";
    }
  }
}