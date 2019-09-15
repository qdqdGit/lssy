import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin<HomePage>{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new PreferredSize(
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          preferredSize: Size(double.infinity, 0)
      ),
      backgroundColor: new Color.fromARGB(255, 241, 245, 251),
      body: new Column(
      children: <Widget>[
          new Container(
            width: double.infinity,
            child: new Column(
             children: <Widget>[
               new Container(
                 width: double.infinity,
                 child: new Text("藏",style: new TextStyle(fontSize: 20,fontFamily: 'NotoSans',height: 1),),
                 padding: const EdgeInsets.only(left: 15,right: 0,bottom: 0,top: 4),
               ),
               new Container(
                 height: 30,
                 width: double.infinity,
                 child: new Text("品",style: new TextStyle(fontSize: 20,fontFamily: 'NotoSans',height: 1),),
                 padding: const EdgeInsets.only(left: 15,right: 0,bottom: 0,top: 4),
               ),
             ],
           ),
            margin: const EdgeInsets.only(top: 10)
          ),
          new Container(
            padding: const EdgeInsets.only(top: 40),
            width: double.infinity,
            child: new Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 400,
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 400,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 400,
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 400,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 400,
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      );
  }
}