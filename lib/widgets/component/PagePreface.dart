import 'package:flutter/material.dart';
// 书签页前言按钮
class PagePreface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Expanded(child: Text("内容一")),
        new Expanded(child: Text("内容二"))
      ],
    );
  }
}