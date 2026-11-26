abstract class Shape {
  String name;

  Shape(this.name);

  double calculateArea();

  void showInfo(){
    print("Hình dạng: $name");
    print("Diện tích: ${calculateArea()}");
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(String name, this.width, this.height) : super(name);

  @override
  double calculateArea() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;

  Circle(String name, this.radius) : super(name);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

void main(){
  Rectangle rectangle = Rectangle("Hình chữ nhật", 5, 10);
  Circle circle = Circle("Hình tròn", 7);

  rectangle.showInfo();
  circle.showInfo();
}