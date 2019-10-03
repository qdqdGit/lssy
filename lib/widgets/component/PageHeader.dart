import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  PageHeader({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: new Container(
        child: new Text(
          "|丽水摄影博物馆|Photography Museum of Lishui China",
          style: new TextStyle(fontSize: 12,fontFamily: 'NotoSans'),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}