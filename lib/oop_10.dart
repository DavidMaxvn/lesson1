class Employee {
  String name = "";
  int age = 0;
  double salary = 0;

  void showInfo(){
    print("Tên: $name");
    print("Tuổi: $age");
    print("Lương: $salary");
  }
}
void main(){
  Employee employee = Employee()
  ..name = "Nguyễn Văn An"
  ..age = 25
  ..salary = 15000000
  ..showInfo();
}