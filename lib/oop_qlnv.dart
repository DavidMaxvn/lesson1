abstract class Employee {
  String id;
  String name;
  int age;
  double baseSalary;

  Employee(this.id, this.name, this.age, this.baseSalary);

  Employee.empty()
      : id = "",
        name = "",
        age = 18,
        baseSalary = 0;

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
    print("Tổng lương: ${calculateTotalSalary()}");
  }

  @override
  String toString() {
    return 'Employee{id: $id, name: $name, age: $age, baseSalary: $baseSalary}';
  }

  @override
  bool operator ==(Object other) {
    return other is Employee && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
abstract class Reportable {
  void generateReport();
}
mixin CanWorkOvertime {
  void workOvertime(int hours) {
    print("Làm thêm $hours giờ");
  }
}
class OfficeEmployee extends Employee with CanWorkOvertime implements Reportable  {
  int workingDays;

  OfficeEmployee(String id, String name, int age, double baseSalary, this.workingDays) : super(id, name, age, baseSalary);

  OfficeEmployee.empty()
      : workingDays = 0,
        super.empty();

  @override
  double calculateBonus() {
    return baseSalary * 0.1;
  }

  // Nhân viên văn phòng: in báo cáo ngày công.
  @override
  void generateReport() {
    print("Báo cáo ngày công: $workingDays ngày");
  }
}
class TechnicalEmployee extends Employee with CanWorkOvertime implements Reportable   {
  int projectCount;

  TechnicalEmployee(String id, String name, int age, double baseSalary, this.projectCount) : super(id, name, age, baseSalary);

  TechnicalEmployee.empty()
      : projectCount = 0,
        super.empty();

  @override
  double calculateBonus() {
    return projectCount * 1000000;
  }

  // Nhân viên kỹ thuật: in báo cáo số dự án hoàn thành.
  @override
  void generateReport() {
    print("Báo cáo số dự án hoàn thành: $projectCount dự án");
  }
}

class Company {
  List<Employee> employee = [];
  // Phương thức addEmployee(Employee employee) để thêm nhân viên.
  void addEmployee(Employee employee){
    this.employee.add(employee);
  }
  // Phương thức showAllEmployees() để hiển thị toàn bộ nhân viên.
  void showAllEmployees(){
    for (Employee e in employee) {
      e.showInfo();
      print("");
    }
  }
  // Phương thức calculateTotalSalary() để tính tổng lương phải trả cho tất cả nhân viên.
  double calculateTotalSalary(){
    double totalSalary = 0;
    for (Employee e in employee) {
      totalSalary += e.calculateTotalSalary();
    }
    return totalSalary;
  }
}

void main(){
  // 1. Tạo công ty
  Company company = Company();
  // 2. Tạo 2 nhân viên văn phòng
  Employee employee1 = OfficeEmployee.empty()
    ..id = "NV01"
    ..name = "Nguyễn Văn An"
    ..age = 25
    ..baseSalary = 15000000
    ..workingDays = 22;

  Employee employee2 = OfficeEmployee.empty()
    ..id = "NV02"
    ..name = "Trần Văn Bình"
    ..age = 30
    ..baseSalary = 18000000
    ..workingDays = 20;

  // 3. Tạo 2 nhân viên kỹ thuật
  Employee employee3 = TechnicalEmployee.empty()
    ..id = "NV03"
    ..name = "Lê Minh Cường"
    ..age = 28
    ..baseSalary = 20000000
    ..projectCount = 3;

  Employee employee4 = TechnicalEmployee.empty()
    ..id = "NV04"
    ..name = "Phạm Hoàng Dũng"
    ..age = 32
    ..baseSalary = 22000000
    ..projectCount = 5;

  // 4. Thêm tất cả nhân viên vào công ty
  company.addEmployee(employee1);
  company.addEmployee(employee2);
  company.addEmployee(employee3);
  company.addEmployee(employee4);

  // 5. Hiển thị danh sách nhân viên
  print("========== DANH SÁCH NHÂN VIÊN ==========");
  company.showAllEmployees();

  // 6. Tính tổng lương công ty phải trả
  print("========== TỔNG LƯƠNG CÔNG TY ==========");
  print(
    "Tổng lương phải trả: ${company.calculateTotalSalary()} VNĐ",
  );

  // 7. Kiểm tra hai nhân viên có cùng ID
  print("========== KIỂM TRA NHÂN VIÊN ==========");

  Employee employee5 = OfficeEmployee.empty()
    ..id = "NV01"
    ..name = "Nguyễn Văn An"
    ..age = 25
    ..baseSalary = 15000000
    ..workingDays = 22;

  print("Hai nhân viên có cùng ID có bằng nhau không?");
  print(employee1 == employee5);

  // 8. Thử gọi phương thức làm thêm giờ
  print("========== LÀM THÊM GIỜ ==========");
  (employee1 as OfficeEmployee).workOvertime(3);
}