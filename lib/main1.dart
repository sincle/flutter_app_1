import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: new BoxDecoration(
        color: Colors.white
      ),
      child: new Center(
        child: new Text(
          "Hello w",
          textDirection: TextDirection.ltr,
          style: new TextStyle(fontSize: 40.0,color: Colors.black))
      ),
    );
  }
}
