import 'package:flutter/material.dart';
import 'dart:ui';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}
class _ArticlePageState extends State<ArticlePage>{
  final double statusBarHeight = MediaQueryData.fromWindow(window).padding.top;
  String articleText = '''从公元前五世纪中国古代学者在小孔成像方面的探索、十六世纪欧洲文艺复兴时期出现暗箱、十九世纪初欧洲研究者对各种光敏化合物进行研究并拍摄出世界上第一张照片，直到1839年8月19日法国向世界公布摄影术发明，人类通过不断研究探索，终于实现了记录影像的梦想。''';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: EdgeInsets.only(top: statusBarHeight,left: 20,right: 20),
        child:ListView(
          children: <Widget>[
            new Container(
                child: new Text(
                  "光影世纪昭风华",
                  style: new TextStyle(fontSize: 28,fontFamily: 'NotoSans',letterSpacing: 2),
                  textAlign: TextAlign.center,
                )
            ),
            new Container(
              padding: EdgeInsets.only(bottom: 20),
              child:new Text(
                articleText,
                style: new TextStyle(fontSize: 18,fontFamily: 'NotoSans',letterSpacing: 2),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(bottom: 20),
              child:new Text(
                articleText,
                style: new TextStyle(fontSize: 18,fontFamily: 'NotoSans',letterSpacing: 2),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(bottom: 20),
              child:new Text(
                articleText,
                style: new TextStyle(fontSize: 18,fontFamily: 'NotoSans',letterSpacing: 2),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(bottom: 20),
              child:new Text(
                articleText,
                style: new TextStyle(fontSize: 18,fontFamily: 'NotoSans',letterSpacing: 2),
              ),
            )
          ],
        )
      )
    );
  }
}