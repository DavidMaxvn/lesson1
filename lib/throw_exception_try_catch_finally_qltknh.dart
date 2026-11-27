class BankAccount{
  String accountNumber;
  String ownerName;
  double balance;

  BankAccount(this.accountNumber, this.ownerName, this.balance);

  void showInfo(){
    print("Số tài khoản: $accountNumber");
    print("Tên chủ tài khoản: $ownerName");
    print("Số dư: $balance");
  }

  void deposit(double amount){
    if (amount <= 0){
      throw Exception("Số tiền nạp phải lớn hơn 0");
    } else {
      balance += amount;
      print("Nạp tiền thành công và số dư mới là: $balance");
    }
  }

  void withdraw(double amount){
    if (amount <= 0){
      throw Exception("Số tiền rút phải lớn hơn 0");
    } else if (amount > balance){
      throw Exception("Số dư không đủ để rút");
    } else {
      balance -= amount;
      print("Rút tiền thành công và số dư mới là: $balance");
    }
  }

  void checkAccount(){
    // if (accountNumber.trim().isEmpty)
    if (accountNumber == ""){
      throw Exception("Số tài khoản không được để trống");
    } else if (ownerName == ""){
      throw Exception("Tên chủ tài khoản không được để trống");
    } else {
      print("Tài khoản hợp lệ");
    }
  }

}

void main(){
  // 1. Tạo tài khoản ngân hàng
  BankAccount account = BankAccount("123456789", "Nguyễn Văn An", 10000000);
  try{
    // 2. Hiển thị thông tin tài khoản
    account.showInfo();

    // 3. Kiểm tra thông tin tài khoản
    account.checkAccount();

    // 4. Nạp tiền
    account.deposit(5000000);

    // 5. Rút tiền hợp lệ
    account.withdraw(3000000);

    // 6. Thử rút số tiền lớn hơn số dư
    account.withdraw(20000000);
  } catch (e) {
    print("Có lỗi xảy ra: $e");
  } finally{
    print("Kết thúc xử lý giao dịch ngân hàng!");
  }

  print("Chương trình kết thúc.");
}