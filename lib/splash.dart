import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lssy/main.dart';

class SplashPage extends StatefulWidget{
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<SplashPage>{
  Timer _t;
  @override
  void initState(){
    super.initState();
    _t = new Timer(const Duration(milliseconds: 3500), (){
      try{
        Navigator.of(context).pushAndRemoveUntil(
            PageRouteBuilder<Null>(
              pageBuilder: (BuildContext context,Animation<double> animation,Animation<double> secondaryAnimation){
                return AnimatedBuilder(
                  animation: animation,
                  builder: (BuildContext context,Widget child){
                    return Opacity(
                      opacity: animation.value,
                      child: new MainPage(title:'启动页'),
                    );
                  },
                );
              },
              transitionDuration: Duration(milliseconds: 300)
            )
            , (Route route)=>route == null);
      }catch(e){}
    });
  }

  @override
  void dispose(){
    _t.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: new Color.fromARGB(255, 241, 245, 251),
      child: Container(
        alignment: Alignment(0, -0.3),
        child: new Text(
          "中国丽水摄影博物馆",
          style: new TextStyle(
            color: new Color.fromARGB(255, 49, 74, 67), fontSize: 40.0,fontWeight: FontWeight.normal,fontFamily:"华文新魏"
          ),
        ),
      ),
    );
  }
}