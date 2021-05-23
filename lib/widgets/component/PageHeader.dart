import 'package:flutter/material.dart';
import 'package:lssy/unit/Adapt.dart';
// 页眉
class PageHeader extends StatelessWidget {
  PageHeader({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
          // new Icon(Icons.arrow_back_ios_outlined,size: Adapt.px(32),),
          new Text(
            "|丽水摄影博物馆|Photography Museum of Lishui China",
            style: new TextStyle(fontSize: Adapt.px(24),fontFamily: 'NotoSans'),
            textAlign: TextAlign.right,
          ),
        ]
      ),
    );
  }
}