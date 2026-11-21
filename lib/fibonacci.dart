
import 'dart:io';

void main(){
  int n = 0;
  bool err = false;
  do {
    err = false;
    stdout.write("Nhập vào số phần tử của dãy Fibonacci (n>0): ");
    try {
      n = int.parse(stdin.readLineSync()!);
      if (n <= 0) {
        print("Nhập không hợp lệ! Vui lòng nhập lại...");
      } else if (n == 1) {
        print("Dãy Fibonacci: 0");
      } else if (n == 2) {
        print("Dãy Fibonacci: 0, 1");
      } else {
        var fib = [0, 1];
        for (var i = 2; i < n; i++) {
          fib.add(fib[i - 1] + fib[i - 2]);
        }
        print("Dãy Fibonacci: ${fib.join(", ")}");
      }
    } catch (e, s){
      print("Nhập không hợp lệ! Vui lòng nhập lại...");
      err = true;
    }
  } while(n <= 0 || err);
}

