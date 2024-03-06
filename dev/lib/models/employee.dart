import 'mixins.dart';
import 'person.dart';

class Employee extends Person with Celebrate {
  double _salary;
  int? _vacationDays;

  Employee(super.firstName, super.lastName, super.age, this._salary,
      {int? vacationDays}) //make nullable, because optional
      : _vacationDays = vacationDays; //необов'язковий параметр

  set vacationDays(int days) {
    if (days > 0) {
      _vacationDays ??= days; //works only if vacationDays in null
    } else {
      throw ArgumentError('Vacation days must be greater than 0!');
    }
  }

  double get salary => _salary;

  Map<String, Function> manageSalary(double salary, double percentage) {
    void increase() {
      salary *= 1 + percentage / 100;
    }

    void decrease() {
      salary -= salary * percentage / 100;
    }

    return {'increase': increase, 'decrease': decrease};
  }
}
