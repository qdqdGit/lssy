import 'package:flutter/material.dart';
import 'package:lssy/widgets/component/CompanyItem.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin<HomePage>{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  Widget navBtn(double height,Image btnImg){
    return Container(
      height: height,
      alignment: Alignment.bottomCenter,
      child: btnImg,
      margin: EdgeInsets.only(right: 4),
      decoration: new BoxDecoration(
          boxShadow:[BoxShadow(color: Color.fromARGB(110, 0, 0, 0),offset: Offset(0, 20),blurRadius: 10,spreadRadius: -10)]
      ),
    );
  }

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
            CompanyItem(
              logoUrl: "http://www.dzwww.com/yuqing/pmtt/201802/W020180202390656596475.png",
              hot: "热招：PHP高级研发工程师 25K-50K",
              title: "阿里集团",
              sub: "已上市移动互联网",
              onPressed: (){
                print("手势识别");
              },
              herLogo: "heroLogo1",
            )
//          new Container(
//            padding: EdgeInsets.only(left: 10,right: 10),
//            width: double.infinity,
//            child: new Column(
//             children: <Widget>[
//               new Container(
//                 width: double.infinity,
//                 child: new Text("藏",style: new TextStyle(fontSize: 20,fontFamily: 'NotoSans',height: 1),),
//                 padding: const EdgeInsets.only(left: 15,right: 0,bottom: 0,top: 4),
//               ),
//               new Container(
//                 height: 30,
//                 width: double.infinity,
//                 child: new Text("品",style: new TextStyle(fontSize: 20,fontFamily: 'NotoSans',height: 1),),
//                 padding: const EdgeInsets.only(left: 15,right: 0,bottom: 0,top: 4),
//               ),
//             ],
//           ),
//            margin: const EdgeInsets.only(top: 10)
//          ),
//          new Container(
//            padding: EdgeInsets.only(top:80, left: 10,right: 10),
//            width: double.infinity,
//            child: new Flex(
//              direction: Axis.horizontal,
//              textBaseline:TextBaseline.alphabetic,
//              crossAxisAlignment: CrossAxisAlignment.end,
//              children: <Widget>[
//                Expanded(
//                  flex: 1,
//                  child: navBtn(380, new Image.asset("assets/image/home/btn_1.png")),
//                ),
//                Expanded(
//                  flex: 1,
//                  child: navBtn(410,new Image.asset("assets/image/home/btn_2.png"))
//                ),
//                Expanded(
//                  flex: 1,
//                  child: navBtn(421, new Image.asset("assets/image/home/btn_3.png"))
//                ),
//                Expanded(
//                  flex: 1,
//                  child: navBtn(379, new Image.asset("assets/image/home/btn_4.png"))
//                ),
//                Expanded(
//                  flex: 1,
//                  child: navBtn(400, new Image.asset("assets/image/home/btn_5.png"))
//                ),
//                Expanded(
//                  flex: 1,
//                  child: navBtn(415, new Image.asset("assets/image/home/btn_6.png"))
//                ),
//              ],
//            ),
//          ),
        ],
      ),
      );
  }
}