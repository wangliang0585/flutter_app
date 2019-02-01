import 'package:flutter/material.dart';
import '../components/group_card.dart';
import '../Service/group_service.dart';

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
        title: new Text("课程", style: TextStyle(color: Colors.black),),
        backgroundColor: Color(0xFFFFFFFF),
        brightness: Brightness.light,
      ),
      body: new Center(
        child: new FutureBuilder(
          future: getGroupList(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return new ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return GroupCard((snapshot.data[index]).title);
                },
              );
            } else if(snapshot.hasError) {
              return new Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return new CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
