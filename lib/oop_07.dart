class Vehicle {
  String brand = "";

  void startEngine() {

  }
}

class Car implements Vehicle {
  @override
  String brand = "Ô tô";

  @override
  void startEngine() {
    print("Ô tô đang khởi động động cơ!");
  }

  Car(this.brand);
}

class Motorbike implements Vehicle {
  @override
  String brand = "Xe máy";

  @override
  void startEngine() {
    print("Xe máy đang khởi động động cơ!");
  }

  Motorbike(this.brand);
}

void main(){
  Car car = Car("Toyota");
  Motorbike motorbike = Motorbike("Honda");

  print("Hãng xe: ${car.brand}");
  car.startEngine();

  print("");

  print("Hãng xe: ${motorbike.brand}");
  motorbike.startEngine();
}