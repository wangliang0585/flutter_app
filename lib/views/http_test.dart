import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:dio/dio.dart';

Future<Post> fetchPost() async {
  Dio dio = new Dio();
  final response =
      await dio.get('https://jsonplaceholder.typicode.com/posts/1');
//  final responseJson = json.decode(response.data);
  return new Post.fromJson(response.data);

//  final response =
//  await http.get('https://jsonplaceholder.typicode.com/posts/1');
//  final responseJson = json.decode(response.body);
//
//  return new Post.fromJson(responseJson);
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class HttpTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Http"),
      ),
      body: new Center(
        child: new FutureBuilder(
          future: fetchPost(),
          builder: (context, snapshot) {

            if (snapshot.hasData) {
              return ListView (
                children: <Widget>[
                  Text(snapshot.data.title,style: new TextStyle(fontSize: 29),),
                  Text(snapshot.data.body),
                ],
              );
              return new Text(snapshot.data.title + snapshot.data.body);
            } else if (snapshot.hasError) {
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
