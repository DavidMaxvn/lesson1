import 'dart:io';
import 'dart:math';

void main(){
  stdout.write("Nhập số thứ nhất: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Nhập số thứ hai: ");
  int b = int.parse(stdin.readLineSync()!);

  print("Tổng: ${a + b}");
  print("Hiệu: ${a - b}");
  print("Tích: ${a * b}");
  print("Thương: ${a / b}");
  print("Chia lấy nguyên: ${a ~/ b}");
  print("Chia lấy dư: ${a % b}");
  print("Lũy thừa: ${pow(a, b)}");
  print("Giá trị tuyệt đối: ${a.abs()}");
  print("Giá trị tuyệt đối: ${b.abs()}");
  print("Đổi dấu kết quả biểu thức: ${-(a-b)}");
}