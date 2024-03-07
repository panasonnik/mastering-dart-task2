import 'package:dev/models/employee.dart';
import 'package:dev/models/student.dart';
import 'package:flutter/material.dart';
import 'models/person.dart';

void main() {
  Student s = Student("John", "Brown", 20, 45, 30);
  s.greet(s.firstName, "Hi");

  var s1 = Student.create('newbie', 'Jack', 'Smith', 18, 30, 25);
  var s2 = Student.create('student', 'Ann', 'Hath', 21, 40, 45);

  debugPrint(s1.runtimeType.toString());
  debugPrint(s2.runtimeType.toString());

  var e1 = Employee("Joe", "Doe", 38, 400);
  var salaryManager = e1.manageSalary(10.0);
  salaryManager['increase']!(); //null check
  print('${e1.salary}');
}
