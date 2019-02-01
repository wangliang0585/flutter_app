import 'package:flutter/material.dart';
import 'package:flutter_app/views/fourth_page.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ThirdPageState();
  }
}

class ThirdPageState extends State<ThirdPage> {
  final List<Todo> todos = new List.generate(
      20, (index) => new Todo(
      "Todo $index",
      "A description of what needs to be done for Todo $index"));
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Page 3"),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            ListTile lt = new ListTile(
              title: new Text(todos[index].title),
              onTap: () {
                Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => FourthPage(todos[index])),
                );
              },
            );
            return lt;
          },
        ),
    );
  }
}