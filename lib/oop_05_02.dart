// class Product {
//   String name;
//   int quantity;
//
//   Product(this.name, this.quantity);
//
//   Product operator +(Product p) {
//     return Product(
//       name,
//       this.quantity + p.quantity,
//     );
//   }
//
//   void showInfo() {
//     print("Tên sản phẩm: $name");
//     print("Số lượng: $quantity");
//   }
// }
//
// void main() {
//   Product product1 = Product("Laptop", 10);
//   Product product2 = Product("Laptop", 20);
//
//   Product product3 = product1 + product2;
//
//   product3.showInfo();
// }

class ShoppingCart {
  List<String> items;
  List<int> quantities;

  // Constructor
  ShoppingCart(this.items, this.quantities);

  // Toán tử +: Gộp hai giỏ hàng thành một giỏ hàng mới
  ShoppingCart operator +(ShoppingCart other) {
    List<String> newItems = [...items, ...other.items];

    List<int> newQuantities = [
      ...quantities,
      ...other.quantities
    ];
    // Dấu ... có nghĩa là lấy toàn bộ phần tử bên trong một List và đưa vào List mới.
    return ShoppingCart(newItems, newQuantities);
  }

  // Toán tử -: Trừ số lượng sản phẩm của hai giỏ hàng
  ShoppingCart operator -(ShoppingCart other) {
    List<String> newItems = [...items];

    List<int> newQuantities = List.generate(
      quantities.length,
          (i) => quantities[i] - other.quantities[i],
    );
    // quantities.length: số phần tử cần tạo.
    // i: vị trí phần tử, bắt đầu từ 0.
    // quantities[i]: lấy số lượng ở giỏ hàng thứ nhất.
    // other.quantities[i]: lấy số lượng ở giỏ hàng thứ hai.
    return ShoppingCart(newItems, newQuantities);
  }

  // Toán tử *: Nhân số lượng tất cả sản phẩm với một số nguyên
  ShoppingCart operator *(int number) {
    List<String> newItems = [...items];

    List<int> newQuantities = quantities
        .map((quantity) => quantity * number)
        .toList();
    // map(): duyệt qua từng phần tử trong List và thực hiện phép tính.
    // toList(): chuyển kết quả thành một List mới.
    return ShoppingCart(newItems, newQuantities);
  }

  // Toán tử []: Lấy tên sản phẩm theo vị trí
  String operator [](int index) {
    return items[index];
  }

  // Phương thức showInfo()
  void showInfo() {
    print("Danh sách sản phẩm:");

    for (int i = 0; i < items.length; i++) {
      print("${items[i]} - Số lượng: ${quantities[i]}");
    }
  }
}

void main() {
  // Tạo hai giỏ hàng
  ShoppingCart cart1 = ShoppingCart(
    ["Laptop", "Mouse"],
    [10, 8],
  );

  ShoppingCart cart2 = ShoppingCart(
    ["Laptop", "Mouse"],
    [3, 2],
  );

  // Thực hiện phép +
  print("===== PHÉP CỘNG =====");
  ShoppingCart cartPlus = cart1 + cart2;
  cartPlus.showInfo();

  // Thực hiện phép -
  print("\n===== PHÉP TRỪ =====");
  ShoppingCart cartMinus = cart1 - cart2;
  cartMinus.showInfo();

  // Thực hiện phép *
  print("\n===== PHÉP NHÂN =====");
  ShoppingCart cartMultiply = cart1 * 3;
  cartMultiply.showInfo();

  // Sử dụng toán tử []
  print("\n===== TOÁN TỬ [] =====");
  print("Sản phẩm tại vị trí 0: ${cart1[0]}");
}
