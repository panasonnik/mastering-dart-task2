import 'package:flutter/material.dart';

import 'student.dart';

class FirstCourseStudent extends Student {
  FirstCourseStudent(super.firstName, super.lastName, super.age,
      super.examPoints, super.labsPoints);

  void visitPolyana() {
    debugPrint('Ви закинули візочок на дерево!');
  }
}
