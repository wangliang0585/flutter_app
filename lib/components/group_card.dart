import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  @required
  final data;

  GroupCard(this.data);

  @override
  Widget build(BuildContext context) {
    return new FractionallySizedBox(
      widthFactor: 1,
      child: new Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        padding: EdgeInsets.all(15.0),
//        height: 100,
//        constraints: BoxConstraints(
//          minHeight: 100,
//        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.grey[300],
              offset: new Offset(0.0, 1.0),
              blurRadius: 2.0,
            ),
          ],
          borderRadius: BorderRadius.circular(2.0),
        ),

        child: new Column(
          children: <Widget>[
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                this.data,
                maxLines: 2,
              ),
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                    child: new Container(
                  alignment: Alignment.topCenter,
                  child: new Column(
//                      mainAxisAlignment: ,
//                      crossAxisAlignment:CrossAxisAlignment.center,

                    children: <Widget>[
                      new Text("456"),
                      new Container(
//                        height: 30,
                        child: new Text("aafds"),
                      ),
                    ],
                  ),
                )),
                new Expanded(
                    child: new Container(
                  alignment: Alignment.topCenter,
                  child: new Column(
//                      mainAxisAlignment: ,
//                      crossAxisAlignment:CrossAxisAlignment.center,

                    children: <Widget>[
                      new Text("456"),
                      new Container(
//                        height: 30,
                        child: new Text("aaafsdfdfdsfdsfsdafsdfass"),
                      ),
                    ],
                  ),
                )),
                new Expanded(
                    child: new Container(
                  alignment: Alignment.topCenter,
                  child: new Column(
//                      mainAxisAlignment: ,
//                      crossAxisAlignment:CrossAxisAlignment.center,

                    children: <Widget>[
                      new Text("456"),
                      new Container(
//                        height: 30,
                        child: new Text("sfsdfdsfsdfsafsdfdsfds"),
                      ),
                    ],
                  ),
                )),
              ],
            ),
            new Container(
              child: new Row(
//                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
//
//                    width:40,
//                    height: 30,
                    child: new MaterialButton(
                      minWidth: 40,
                      onPressed: buttonPressed,
                      child: Text(
                        "b",
                        textAlign: TextAlign.left,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  new FlatButton(
                    onPressed: buttonPressed,
                    child: Text("btnfdhsjkfhdskjfhjs"),
                  ),
                  new Expanded(
//                    width: 30,
                    child: new FlatButton(
                      onPressed: buttonPressed,
                      child: Text(
                        "btnjhioljfaslkjfalks",
                        maxLines: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void buttonPressed() {}
}
