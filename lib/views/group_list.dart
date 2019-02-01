import 'package:flutter/material.dart';
import '../components/group_card.dart';

class GroupList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GroupListState();
  }
}

class GroupListState extends State<GroupList> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("课程",style: TextStyle(color: Colors.black),),
        backgroundColor: Color(0xFFFFFFFF),
        brightness: Brightness.light,
      ),
      body: new Container (
        child: new ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return GroupCard("index $index");
          },
        ),
      ),
    );
  }
}
