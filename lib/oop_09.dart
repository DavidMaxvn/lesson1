// class Product {
//   String name;
//   double price;
//
//   Product(this.name, this.price);
//
//   @override
//   String toString() {
//     return 'Sản phẩm: $name - Giá: ${price.toStringAsFixed(0)}';
//   }
// }
//
// void main(){
//   Product product = Product("Laptop", 15000000);
//   print(product);
// }

// class Student {
//   String name;
//
//   Student(this.name);
//
//   @override
//   bool operator ==(Object other) {
//     return other is Student && other.name == name;
//   }
//   @override
//   int get hashCode => name.hashCode;
// }
//
// void main() {
//   Student student1 = Student("An");
//   Student student2 = Student("An");
//   Student student3 = Student("Bình");
//
//   Set<Student> students = {};
//
//   students.add(student1);
//   students.add(student2);
//   students.add(student3);
//
//   print(student1 == student2);
//   print(student1.hashCode == student2.hashCode);
//   print(students.length);
// }

class Student {
  String name;
  int age;

  Student(this.name, this.age);

  @override
  bool operator ==(Object other) {
    return other is Student && other.name == name && other.age == age;
  }

  // @override
  // int get hashCode => name.hashCode + age.hashCode;
  @override
  int get hashCode => Object.hash(name, age);
}

void main(){
  Student student1 = Student("An", 20);
  Student student2 = Student("An", 20);
  Student student3 = Student("Bình", 21);

  print(student1 == student2);
  print(student1 == student3);
  print(student1.hashCode == student2.hashCode);

  Set<Student> students = {student1, student2, student3};
  print(students.length);
}