import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'package:flutter_app/views/first_page.dart';
import 'package:flutter_app/views/second_page.dart';
import 'package:flutter_app/views/third_page.dart';

void main() => runApp(new MyApp());

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomeApp();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        home: new Scaffold(
          body: new MyHomePage(),
        ),
    );
  }
}

class MyHomeApp extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new TabBarView(
            controller: tabController,
            children: <Widget>[
              new FirstPage(),
              new SecondPage(),
              new ThirdPage()
            ]
        ),
        bottomNavigationBar: new Material(
          color: Colors.orange,
          child: new TabBar(
              controller: tabController,
              tabs: [
            new Tab(text: "Tab1", icon: new Icon(Icons.home),),
            new Tab(text: "Tab2", icon: new Icon(Icons.message),),
            new Tab(text: "Tab3", icon: new Icon(Icons.cloud),),
          ]),
        ),
    );

  }
}


