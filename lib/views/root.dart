import 'package:flutter/material.dart';
import 'group_list.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      home: new Scaffold(
        body: new GroupList(),
      ),
    );
  }
}
