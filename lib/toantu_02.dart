
void main() {
  int a = 8;

  int b = 5 + (++a);
  int c = 5 + (a++);

  int d = 5 + (--a);
  int e = 5 + (a--);

  print("a = $a");
  print("b = $b");
  print("c = $c");
  print("d = $d");
  print("e = $e");

  int x = 5;

  int y = x++ + ++x;

  print("x = $x");
  print("y = $y");
}


