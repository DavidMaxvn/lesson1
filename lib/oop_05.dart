// Tính kế thừa là gì?
// Tính kế thừa cho phép chúng ta tạo một class mới dựa trên một class đã có.
// - Lớp cha (Parent class): Class được kế thừa.
// - Lớp con (Child class): Class kế thừa từ lớp cha.
// - extends: Từ khóa dùng để kế thừa.
// Ví dụ: Chúng ta có class Product mô tả sản phẩm. Sau đó, muốn tạo class Table mô tả bàn ăn.
// Vì bàn ăn cũng là một sản phẩm nên Table có thể kế thừa Product.

class Employee {
  String name = "";
  double salary = 0;

  Employee(this.name, this.salary);

  void showInfo(){
    print("Tên: $name");
    print("Lương: $salary");
  }
}

class Manager extends Employee {
  String department = "";

  Manager(String name, double salary, this.department) : super(name, salary);
  //Dấu : là bắt đầu phần initializer list.
  //super(name, price): Gọi constructor của lớp cha.

  void showDepartment(){
    print("Phòng ban: $department");
  }
}

void main(){
  Manager manager = Manager("Nguyễn Văn An", 15000000, "IT");

  manager.showInfo();
  manager.showDepartment();
}