import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lssy/unit/Adapt.dart';
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
        padding: EdgeInsets.only(top: statusBarHeight,right: Adapt.px(37),bottom: Adapt.px(126)),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Container(
              height: Adapt.px(238),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Container(
                    child: new PageHeader(),
                    height: Adapt.px(128),
                    alignment: Alignment.centerRight,
                  ),
                  new Container(
                    color: Colors.red,
                    height: Adapt.px(110),
                  )
                ],
              ),
            ),
            new Container(
              height: 100,
              color: Colors.amber,
            ),
            new Container(
              height: 100,
              color: Colors.blue,
            ),
            new Container(
              height: 100,
              color: Colors.deepPurple,
            ),
            new Container(
              height: 100,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}