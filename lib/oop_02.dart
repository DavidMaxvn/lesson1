class Product {
  String name;
  double price;
  int quantity;

  // Constructor thông thường
  Product(this.name, this.price, this.quantity);

  // Named Constructor
  // Cách 1: Sử dụng Initializer List
  Product.discount(this.name)
      : price = 100000,
        quantity = 1;

  // Cách 2: Gán trong thân constructor
//   Product.discount(String name){
//     this.name = name;
//     this.price = 100000;
//     this.quantity = 1;
// }

  void showInfo(){
    print("Tên: $name");
    print("Giá: $price");
    print("Số lượng: $quantity");
  }
}

void main(){
  Product product1 = Product("Laptop", 15000000, 2);

  Product product2 = Product.discount("Chuột");

  product1.showInfo();
  product2.showInfo();
}