
import 'Bicycle.dart';

void main(){

  const number = 1;

  final mess = "Hello CodeFresher  $number ${doSomeThings()}";

  print(mess);
  doSomeThings();
  var list = const [1, 2, 3];
  List<int> list2 = [1, 2, 3];
  // list.add(4);
  list2[0] = 0;
  List<String> list3 = [];
  list3.add("value1");
  list3.add("value2");
  list3.add("value3");
  list3.removeAt(1);

  print("Giá trị list1: $list");
  print("Giá trị list2: $list2");
  print("Giá trị list3: $list3");

  Set<String> list4 = {'value1', 'value2', 'value3', 'value4'};
  list4.add('value1');
  print("Giá trị list4: $list4");
  
  var bike = Bicycle(1, 2);
  bike.cadence = 10;
  // bike._speed = 15;
  bike.speedUp(10);
  print(bike);
}

String doSomeThings(){
  print("do some code");
  return "Giá trị trả về của hàm";
}