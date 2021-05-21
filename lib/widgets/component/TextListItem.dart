import 'package:flutter/cupertino.dart';
import 'package:lssy/unit/Adapt.dart';

// 带方块
class TextListItem extends StatelessWidget{
  String title;
  TextListItem({this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Container(
          width:Adapt.px(13),
          height: Adapt.px(13),
          margin: EdgeInsets.only(right: 2,top: 4),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color.fromARGB(255, 181, 181, 181),
          ),
        ),
        Text(title),
      ],
    );
  }

}