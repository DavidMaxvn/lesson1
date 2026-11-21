// class Meal {
//   late String _description;
//
//   set description(String desc) {
//     _description = 'Meal description: $desc';
//   }
//
//   String get description => _description;
// }
//
// void main() {
//   final myMeal = Meal();
//   // myMeal.description = 'Feijoada!';
//   print(myMeal.description);
// }

int _conputeValue() {
  print('In _computeValue ... ');
  return 3;
}

class CachedValueProvider {
  late final _cache = _conputeValue();

  int number = 100;
  String version = '1.0.0';

  int get value => _cache;

  // @override
  // String toString() {
  //   return 'CachedValueProvider{_cache: $_cache, number: $number, version: $version}';
  // }
}

void main() {
  print('Calling constructor ... ');
  var provider = CachedValueProvider();
  print(provider);
  print(provider.number);
  print(provider.version);
  print('Getting value ... ');
  print('The value is ${provider.value}!');
}