class Calculator {
  static void showWelcome(){
    print("Chao mung den voi may tinh");
  }

  static int calculateSum(int a, int b){
    return a + b;
  }
}

void main(){
  Calculator.showWelcome();
  int sum = Calculator.calculateSum(10, 20);
  print("Tổng là: $sum");
}