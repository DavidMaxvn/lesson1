class TestWidget {
  int width;
  int height;
  String? sLabel;

  TestWidget({required this.width, required this.height});

  TestWidget.constructor2(this.sLabel, {required this.width, required this.height});

  @override
  String toString() {
    return 'TestWidget{width: $width, height: $height, sLabel: $sLabel}';
  }

// TestWidget(int _width, int _height){
  //   this.width = _width;
  //   this.height = _height;
  // }
}

void main(){
  TestWidget wg1 = TestWidget(width: 100, height: 200);
  wg1.sLabel = 'Widget1';
  print(wg1);

  TestWidget wg2 = TestWidget.constructor2('Widget2', width: 110, height: 220);
  print(wg2);
}