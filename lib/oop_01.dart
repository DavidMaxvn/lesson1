class Employee {
  // Khai báo thuộc tính
  String name = "";
  int age = 0;
  double salary = 0;

  // Constructor
  Employee(this.name, this.age, this.salary);

  // Phương thức showInfo()
  void showInfo() {
    print("Tên: $name");
    print("Tuổi: $age");
    print("Lương: $salary");
  }

  // Phương thức calculateAnnualSalary()
  double calculateAnnualSalary() {
    return salary * 12;
  }
}

void main() {
  // Tạo đối tượng Employee
  Employee employee = Employee("Nguyễn Văn An", 25, 15000000);
  // Gọi các phương thức
  employee.showInfo();
  print("Lương 1 năm: ${employee.calculateAnnualSalary()}");
}

// class Product {
//   //Khai báo các thuộc tính
//   String manufacture = '';
//   String name = '';
//   var    price;
//   int    quantity;
//
//
//   //Khai báo hàm khởi tạo
//   Product(var price, {int quantity:0}) {
//     this.price    = price;
//     this.quantity = quantity;
//   }
//
//   //Khai báo các phương thức
//   calulateTotal() {
//     return this.price * this.quantity;
//   }
//
//   showTotal() {
//     var tong = this.calulateTotal();
//     print("Tổng số tiền là: $tong");
//   }
// }

// void main(){
//   var product = new Product(600, quantity: 1);
//   product.showTotal();
//
//   product.quantity = 2;
//   product.showTotal();
// }