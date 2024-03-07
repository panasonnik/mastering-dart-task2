import 'package:dev/models/first_course_student.dart';

import 'mixins.dart';
import 'person.dart';

class Student extends Person {
  int _examPoints, _labsPoints, _totalPoints;
  Student(super.firstName, super.lastName, super.age, this._examPoints,
      this._labsPoints)
      : _totalPoints = _examPoints + _labsPoints; //конструктор ініціалізації

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
