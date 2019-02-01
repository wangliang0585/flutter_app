import 'package:flutter/material.dart';
import 'package:flutter_app/views/root.dart';

void main() {
  runApp(new Root());
}

//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//        home: new Scaffold(
//          body: new MyHomePage(),
//        ),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return new MyHomeApp();
//  }
//}
//
//class MyHomeApp extends State<MyHomePage> with SingleTickerProviderStateMixin {
//  TabController tabController;
//  @override
//  void initState() {
//    super.initState();
//    tabController = new TabController(initialIndex: 0,length: 3, vsync: this);
//  }
//
//  @override
//  void dispose() {
//    tabController.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//        body: new TabBarView(
//            controller: tabController,
//            children: <Widget>[
//              new FirstPage(),
//              new SecondPage(),
//              new ThirdPage()
//            ]
//        ),
//        bottomNavigationBar: new Material(
//          color: Colors.orange,
//          child: new TabBar(
//              controller: tabController,
//              tabs: [
//            new Tab(text: "Tab1", icon: new Icon(Icons.home),),
//            new Tab(text: "Tab2", icon: new Icon(Icons.message),),
//            new Tab(text: "Tab3", icon: new Icon(Icons.cloud),),
//          ]),
//        ),
//    );
//  }
//}
