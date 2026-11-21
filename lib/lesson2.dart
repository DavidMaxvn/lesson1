

void main() {
  int? a;
  a = null;
  String? mess = null;
  mess = 'value2';
  print("a is $a. \n mess is $mess");

  var score = getScore('101', null);
  print("Điểm số là: $score");


  List<String> aListOfStrings = ['one', 'two', 'three'];
  List<String>? aNullableListOfStrings;
  List<String?> aListOfNullableStrings = ['one', null, 'three'];
  print('aListOfStrings is $aListOfStrings.');
  print('aNullableListOfStrings is $aNullableListOfStrings');
  print('aListOfNullableStrings is $aListOfNullableStrings');

  print("Độ dài String null là: ${getLength(null)}");
  print("Độ dài String CodeFresher là: ${getLength("CodeFresher")}");

  int? couldBeNullButIsnt = 1;
  List<int?> listThatCouldHoldNulls = [2, null, 4];

  int a1 = couldBeNullButIsnt;
  int b = listThatCouldHoldNulls.first!;

  String? text;
  //if (DoteTime.now().hour < 12) {
  //   text = "It's morning! Let's make aloo poratho!";
  //} else {
  // text = "It's afternoon! Let's make biryani!";
  // }

    print(text ?? 'text bị null');
    print(text?.length ?? 0);
}

int getLength(String? str){

  // if(str == null)
  //   return 0;
  // else
  //   return str.length;

  return str?.length ?? 0;
}

int getScore(String userId, int? lastScore){
  // return lastScore!;
  if(lastScore != null)
    return lastScore;
  else{
    return 100;
  }
}