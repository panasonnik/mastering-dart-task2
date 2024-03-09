import 'package:dev/models/first_course_student.dart';

import 'person.dart';

class Student extends Person {
  int _examPoints, _labsPoints, _totalPoints;
  Student(super.firstName, super.lastName, super.age, this._examPoints,
      this._labsPoints)
      : _totalPoints = _examPoints + _labsPoints; //конструктор ініціалізації

  int get examPoints => _examPoints;
  set examPoints(int points) {
    _examPoints =
        (points > 40 && points < 60) ? (points * 1.2).toInt() : points;
  }

  int get labsPoints => _labsPoints;
  set labsPoints(int points) => _labsPoints = points;

  factory Student.create(String type, String firstName, String lastName,
      int age, int exam, int labs) {
    switch (type) {
      case 'newbie':
        return FirstCourseStudent(firstName, lastName, age, exam, labs);
      default:
        return Student(firstName, lastName, age, exam, labs);
    }
  }
}
