
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lssy/unit/Adapt.dart';

class BookmarkHead extends StatelessWidget{
  double height;
  Widget left;
  Widget right;

  BookmarkHead({this.height,this.left,this.right});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: new EdgeInsets.only(top: Adapt.px(22)),
      height: height,
      child:new DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(127, 77, 77, 77),
                offset: Offset(Adapt.px(28),0),
                blurRadius: Adapt.px(20)
            )
          ]
      ), child: new Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 333,
              child: new DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Color.fromARGB(255, 201, 201, 201),Color.fromARGB(255, 229, 229, 229),Colors.white]),
                ),
                child: left
              )
            ),
            Expanded(
              flex: 381,
              child: right,
            )
          ]
      ))
    );
  }
}