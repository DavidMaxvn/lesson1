void main(){
  // Iterable<int> numbers = [2, 4, 6, 8, 10];
  //
  // for (var number in numbers){
  //   print(number);
  // }

  Iterable<String> names = ["An", "Bình", "Cường"];

  // for (var name in names) {
  //   print("Xin chào $name");
  // }

  names.forEach((name){
    print("Xin chào $name");
  });
}