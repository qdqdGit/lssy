import 'package:flutter/material.dart';

// 垂直文本按钮
class VerticalTextButton extends StatelessWidget {

  final String title;
  VerticalTextButton({Key key,this.title,this.onPressed}):super(key:key);
  VoidCallback onPressed;

  _verticalTitle(){
    List<Widget> widgets = [];
    for(var i=0;i<this.title.length;i++){
      widgets.add( new Container(
        height: 28,
        width: double.infinity,
        child: new Text(this.title.substring(i,i+1),style: new TextStyle(fontSize: 20,fontFamily: 'NotoSans',height: 1),),
        padding: const EdgeInsets.only(left: 15,right: 0,bottom: 0,top: 4),
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: this.onPressed,
      child: new Container(
          padding: EdgeInsets.only(left: 10,right: 10),
          width: double.infinity,
          child: new Column(
            children: _verticalTitle()
          ),
          margin: const EdgeInsets.only(top: 10)
      )
    );
  }
}