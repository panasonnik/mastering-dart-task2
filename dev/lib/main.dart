import 'package:dev/models/employee.dart';
import 'package:dev/models/student.dart';
import 'package:flutter/material.dart';
import 'models/person.dart';

void main() {
  Student s = Student("John", "Brown", 20, 45, 30);
  s.greet(s.firstName, "Hi"); //default parameter

  var s1 = Student.create('newbie', 'Jack', 'Smith', 18, 30, 25); //factory
  var s2 = Student.create('student', 'Ann', 'Hath', 21, 40, 45);
  debugPrint("----------");
  debugPrint(s1.runtimeType.toString());
  debugPrint(s2.runtimeType.toString());

  debugPrint("----------");
  var e1 = Employee("Joe", "Doe", 38, 400);
  var salaryManager = e1.manageSalary(10.0); //function closures
  salaryManager['increase']!(); //null check
  debugPrint('${e1.salary.toStringAsFixed(3)}'); //до 3ох знаків після коми

  e1.premium = 20.0; //assert
  debugPrint(e1.premium.toString());
  debugPrint("----------");
  debugPrint(e1.celebrateBirthday(e1.age).toString());
  Person p1 = Person("Amy", "Q", 23);
  Person p2 = Person("Bob", "Vance", 57);
  Person p3 = Person("Celia", "James", 40);
  Person p4 = Person("Greg", "Charles", 34);

  List<Person> people = [p1];
  people.addAll([p2, p3, p4]);

  var oldPeople = people.where((p) => p.age > 30);
  debugPrint("----------\nPeople older than 30:");
  oldPeople.forEach((p) => debugPrint(p.toString()));
}
