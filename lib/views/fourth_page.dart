import 'package:flutter/material.dart';

class Todo
{
  final String title;
  final String descripiton;
  Todo(this.title, this.descripiton);
}

class FourthPage extends StatelessWidget
{
  final Todo todo;

  FourthPage(this.todo);
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("${todo.title}"),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(15),
        child: new Text("${todo.descripiton}"),
      ),
    );
  }
}