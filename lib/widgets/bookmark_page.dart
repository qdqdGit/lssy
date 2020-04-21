import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lssy/widgets/component/PageHeader.dart';

//TODO:书签页
class BookmarkPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BookmarkPage();
}

class _BookmarkPage extends State<BookmarkPage>{
  final double statusBarHeight = MediaQueryData.fromWindow(window).padding.top;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 233, 230),
      body: new Container(
        padding: EdgeInsets.only(top: 10),
        child: new Row(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(top: statusBarHeight,left: 20,right: 20),
              alignment: Alignment.topRight,
              child: new PageHeader(),
            ),
            new Expanded(child: new Text("文本演示"))
          ],
        ),
      ),
    );
  }
}