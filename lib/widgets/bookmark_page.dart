import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:lssy/unit/Adapt.dart';
import 'package:lssy/widgets/component/PageHeader.dart';

//TODO:书签页
class BookmarkPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BookmarkPage();
}

class _BookmarkPage extends State<BookmarkPage>{
  Color _tabColor = Colors.white;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 233, 230),
      body: new Container(
        padding: EdgeInsets.only(top: 10,right: Adapt.px(37)),
        child: new ListView(
          children: <Widget>[
            new Container(
              child: new PageHeader(),
              padding: new EdgeInsets.only(bottom: Adapt.px(42)),
            ),
            new Container(
              height: Adapt.px(110),
              color: Colors.red,
              child: new Flex(
                  direction:Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 333,
                      child: new Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 381,
                      child: new Container(
                        color: Colors.yellow,
                      ),
                    )
                  ],
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: Adapt.px(22)),
              height: Adapt.px(247),
              child: new Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 333,
                      child: new Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 381,
                      child: new Container(
                        color: Colors.yellow,
                      ),
                    )
                  ]
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: Adapt.px(22)),
              height: Adapt.px(247),
              child: new Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 333,
                      child: new Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 381,
                      child: new Container(
                        color: Colors.yellow,
                      ),
                    )
                  ]
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: Adapt.px(22)),
              height: Adapt.px(247),
              child: new Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 333,
                      child: new Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 381,
                      child: new Container(
                        color: Colors.yellow,
                      ),
                    )
                  ]
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: Adapt.px(22)),
              height: Adapt.px(247),
              child: new Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 333,
                      child: new Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 381,
                      child: new Container(
                        color: Colors.yellow,
                      ),
                    )
                  ]
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print("点击按钮");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}