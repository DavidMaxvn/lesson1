import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyTestApp());
}

class MyTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(home: new MyTestHomePage());
  }
}

class MyTestHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var soLanBamNut = 0;
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("My Test Home Page"),
        ),
      body: new Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text("Đây là page 2"),
                new ElevatedButton(onPressed: () {
                  soLanBamNut++;
                  print("Nút đã được bấm! $soLanBamNut");
                },
                    child: new Text("Click me!"))
              ],
          )),
    );
  }
}
