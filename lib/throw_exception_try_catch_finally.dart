// Exception- Ngoại lệ thông thường
// FormatException - Dữ liệu sai định dạng
// TimeoutException - Quá thời gian chờ
// IOException - Lỗi vào/ra dữ liệu

// void checkAge(int age){
//   if (age < 18){
//     throw Exception("Nhân viên chưa đủ tuổi lao động");
//   } else if (age > 60) {
//     throw Exception("Tuổi nhân viên vượt quá giới hạn");
//   } else {
//     print("Tuổi nhân viên hợp lệ");
//   }
// }
// void main() {
//   // checkAge(25);
//   try {
//     checkAge(15);
//   } catch (e) {
//     print("Có lỗi xảy ra: $e");
//     // print(e.toString());
//   }
//
//   print("Chương trình vẫn tiếp tục chạy!");
// }

// void checkData(String data){
//   if(data == "A"){
//     throw Exception("Dữ liệu sai");
//   } else if (data == "B"){
//     throw FormatException("Sai định dạng");
//   } else {
//     print("Dữ liệu hợp lệ");
//   }
// }
// void main(){
//   try{
//     checkData("A");
//   } on FormatException catch (e){
//     print("Lỗi định dạng: $e");
//   } catch (e){
//     print("Có lỗi xảy ra: $e");
//   } finally {
//     print("Kết thúc xử lý dữ liệu");
//   }
//
//   print("Chương trình tiếp tục chạy");
// }

void checkEmployee(String name, int age){
  if (name == ""){
    throw Exception("Tên nhân viên không được để trống");
  } else if (age < 18 || age > 60){
    throw FormatException("Tuổi không hợp lệ");
  } else {
    print("Tên nhân viên: $name");
    print("Tuổi nhân viên: $age");
  }
}
void main(){
  try{
    checkEmployee("", 15);
  } on FormatException catch (e){
    print("Lỗi định dạng: $e");
  } catch (e){
    print("Có lỗi xảy ra: $e");
  } finally {
    print("Kết thúc xử lý dữ liệu");
  }

  print("Chương trình kết thúc");
}