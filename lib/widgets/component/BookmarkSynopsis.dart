import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lssy/unit/Adapt.dart';

import 'TextListItem.dart';

class BookmarkSynopsis extends StatelessWidget{
  String titles;
  List<String> listss;
  BookmarkSynopsis({this.titles,this.listss});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: Adapt.px(34)),
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex:80,
              child: new Container(
                child: new Text(titles,style: TextStyle(
                  fontFamily: '汉仪细圆简体',
                  fontSize: Adapt.px(38),
                  color: Color.fromARGB(255, 71, 71, 71),
                ),),
                alignment: Alignment.centerLeft,
              )
          ),
          Expanded(
              flex:120,
              child: DefaultTextStyle(
                style: TextStyle(
                    fontSize: Adapt.px(20),
                    color: Color.fromARGB(255, 71, 71, 71),
                    fontFamily: '汉仪细圆简体',
                    fontWeight: FontWeight.w400,
                    height: 1.6
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for(int i = 0;i<listss.length;i++)
                      TextListItem(title: listss[i]),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
  
}