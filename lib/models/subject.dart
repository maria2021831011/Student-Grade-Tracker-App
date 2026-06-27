class Subject {
  // Subject Name
  final String name;

  // Private Mark
  double _mark;

  // Constructor
  Subject({
    required this.name,
    required double mark,
  }) : _mark = mark;

  // Getter for Mark
  double get mark => _mark;

  // Grade Getter
  String get grade {
    if (_mark >= 80) {
      return "A";
    } else if (_mark >= 65) {
      return "B";
    } else if (_mark >= 50) {
      return "C";
    } else {
      return "F";
    }
  }
}