import 'package:flutter/material.dart';

class ThemeImage extends StatelessWidget {
  final String imageSrc;
  final String title;
  ThemeImage({Key key,this.imageSrc,this.title,this.onPressed}):super(key:key);
  VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: this.onPressed,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            child: new Text(
                this.title,
                style: new TextStyle(fontSize: 18,fontFamily: 'NotoSans',fontWeight: FontWeight.bold),
                textAlign: TextAlign.left
            ),
            padding: EdgeInsets.only(bottom: 10),
            alignment: Alignment.topLeft,
          ),
          new Container(
            child: new Image.network(this.imageSrc),
            decoration: new BoxDecoration(
                boxShadow:[BoxShadow(color: Color.fromARGB(40, 0, 0, 0),offset: Offset(0, 0),blurRadius: 6,spreadRadius: 0)]
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top: 10,bottom: 20),
            child: new Text(
              "▲进入专题",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}