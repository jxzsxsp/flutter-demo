import 'package:flutter/material.dart';

void main() => runApp(new Demo());

class Demo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Welcome to Flutter"),
        ),
        body: new Center(
          child: new Text("Hello World!"),
        ),
      ),
    );
  }
}