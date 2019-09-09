import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
//  设置状态栏，颜色
//  SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
//    statusBarColor: Colors.transparent,
//  );
//  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
          child: Offstage(
            offstage: false,
            child: AppBar(
              brightness: Brightness.light,//Theme.of(context).accentColor, 设置主题颜色
              backgroundColor: Color.fromRGBO(241, 245, 251, 1),
              title: Center(child: Text("Flutter Demo")),
              elevation: 0,
            ),
          ),
          preferredSize: Size(double.infinity,0),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(241, 245, 251, 1)
        ),
      )
    );
  }
}
