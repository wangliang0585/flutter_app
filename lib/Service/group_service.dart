import 'package:dio/dio.dart';
import 'dart:async';

Future<List<Group>> getGroupList() async {
  Options options = Options(
      headers: {"umu-t": "04jtrfkviaea9ib4b9q414kpc2", "umu-v": "3.5.50"});
  Dio dio = new Dio(options);
  final response = await dio.get(
      'https://api.umu.cn/group/getgrouplist?from_type=app&order=update_time&page=1&size=10');
  if (response.data != null) {
    bool status = response.data["status"];
    if (status == true) {
      Map<String, dynamic> data = response.data['data'];
      if (data != null) {
        List groupList = new List<Group>();
        List dataList = data['list'];
        for (int i = 0; i < dataList.length; i++) {
          Map groupInfoMap = dataList[i];
          if (groupInfoMap != null) {
            Map groupInfo = groupInfoMap['groupInfo'];
            Group group = Group.fromJson(groupInfo);
            groupList.add(group);
          }
        }
        return groupList;
      }
    }
  }
  return null;
}

class Group {
  final String title;
  final String id;

  Group({this.title, this.id});

  factory Group.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return new Group(
        title: json['title'],
        id: json['id'],
      );
    }
    return null;
  }
}
