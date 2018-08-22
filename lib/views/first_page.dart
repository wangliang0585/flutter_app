import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FirstPageState();
  }
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page 1"),
      ),
      body: new GestureDetector(
        onTap: () {
          print('MyButton was tapped!');
        },
        child: new Container(
          //height: 36.0,
          //padding: const EdgeInsets.all(8.0),
          //margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(5.0),
            color: Colors.lightGreen[500],
          ),
          child: new Center(
            child: new Text('Engage'),
          ),
        ),
      ),
    );
  }
}