abstract class Employee {
  String id;
  String name;
  int age;
  double baseSalary;

  Employee(this.id, this.name, this.age, this.baseSalary);

  String get employeeName => name;

  set employeeAge(int newAge){
    if (newAge >= 18 && newAge <=60) {
      age = newAge;
    } else {
      print("Tuổi không hợp lệ");
    }
  }

  double calculateBonus();

  double calculateTotalSalary(){
    return baseSalary + calculateBonus();
  }

  void showInfo(){
    print("ID: $id");
    print("Tên: $name");
    print("Tuổi: $age");
    print("Lương cơ bản: $baseSalary");
    print("Thưởng: ${calculateBonus()}");
  }
}
class OfficeEmployee extends Employee {
  int workingDays;

  OfficeEmployee(String id, String name, int age, double baseSalary, this.workingDays) : super(id, name, age, baseSalary);

  @override
  double calculateBonus() {
    return baseSalary * 0.1;
  }
}
class TechnicalEmployee extends Employee {
  int projectCount;

  TechnicalEmployee(String id, String name, int age, double baseSalary, this.projectCount) : super(id, name, age, baseSalary);

  @override
  double calculateBonus() {
    return projectCount * 1000000;
  }
}
// Phần C
