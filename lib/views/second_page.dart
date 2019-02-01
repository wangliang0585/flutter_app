import 'package:flutter/material.dart';
import 'choose_page.dart';
import 'package:flutter/cupertino.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page 2"),
      ),
      body: new Center(
        child: new MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Our GestureDetector wraps our button
    return new CupertinoButton(
      // When the child is tapped, show a snackbar
      onPressed: () {
        _pushAndWaitResult(context);
      },
      color: Colors.red,
      // Our Custom Button!
      child: new Container(
        padding: new EdgeInsets.all(5.0),
        child: new Text('My Button'),
      ),
    );
  }

  void _pushAndWaitResult(BuildContext context) async {
    final result = await Navigator.of(context).pushNamed('/b');
//    final result = await Navigator.push(
//        context, new MaterialPageRoute(builder: (context) => ChoosePage()));

    if (result != null) {
      final snackBar = new SnackBar(
          content: new Text("$result"), duration: Duration(milliseconds: 500));

      Scaffold.of(context).showSnackBar(snackBar);
    }
  }
}
