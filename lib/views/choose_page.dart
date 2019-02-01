import 'package:flutter/material.dart';

class ChoosePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Scaffold sd = new Scaffold(
      appBar: new AppBar(title: new Text("Choose"),),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(8),
              child: new RaisedButton(
                onPressed: () {
                  _popbackAndSendResult(context,"AAAAA");
                },
                child: new Text("AAAAA"),
              ),
            ),
            new Padding(
              padding: EdgeInsets.all(8),
              child: new RaisedButton(
                onPressed: () {
                  _popbackAndSendResult(context,"BBBBB");

                },
                child: new Text("BBBBB"),
              ),
            )
          ],
        ),
      ),
    );

    return sd;
  }

  void _popbackAndSendResult(BuildContext context, String string) {
    Navigator.pop(context,string);
  }
}