import 'package:flutter/material.dart';
import 'package:lssy/widgets/component/PageHeader.dart';
import 'package:lssy/widgets/component/ThemeImage.dart';
import 'dart:ui';

class ThemePage extends StatefulWidget {
  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage>{
  final double statusBarHeight = MediaQueryData.fromWindow(window).padding.top;
  String articleText = '''从公元前五世纪中国古代学者在小孔成像方面的探索、十六世纪欧洲文艺复兴时期出现暗箱、十九世纪初欧洲研究者对各种光敏化合物进行研究并拍摄出世界上第一张照片，直到1839年8月19日法国向世界公布摄影术发明，人类通过不断研究探索，终于实现了记录影像的梦想。''';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new Container(
            padding: EdgeInsets.only(top: 10),
            color: Color.fromARGB(255, 234, 233, 230),
            child:ListView(
              padding: EdgeInsets.only(top: statusBarHeight,left: 20,right: 20,bottom: 40),
              children: <Widget>[
                new Container(
                    child: PageHeader()
                ),
                new Container(
                    padding: EdgeInsets.only(top: 30,bottom: 20),
                    child: new Text(
                      "光影世纪昭风华",
                      style: new TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoSans',
                          letterSpacing: 2
                      ),
                      textAlign: TextAlign.left,
                    )
                ),
                new Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child:new Text(
                    articleText,
                    style: new TextStyle(fontSize: 16,fontFamily: 'NotoSans',letterSpacing: 1),
                    textAlign: TextAlign.justify,
                  ),
                ),
                ThemeImage(
                  title: "小孔成像",
                  imageSrc: "http://spider.ws.126.net/d5214481dd038a1b08101dca56e709a1.jpeg",
                  onPressed: (){
                    print("点击按钮");
                  }),
                ThemeImage(
                    title: "小孔成像",
                    imageSrc: "http://spider.ws.126.net/d5214481dd038a1b08101dca56e709a1.jpeg",
                    onPressed: (){
                      print("点击按钮");
                    })
              ],
            )
        )
    );
  }
}
