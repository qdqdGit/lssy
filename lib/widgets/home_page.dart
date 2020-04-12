import 'package:flutter/material.dart';
import 'package:lssy/unit/Adapt.dart';
import 'package:lssy/widgets/component/VerticalTextButton.dart';
import 'package:lssy/widgets/article_page.dart';
import 'package:lssy/widgets/theme_page.dart';

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
          new Container(
            child: new VerticalTextButton(
              title:"藏品",
              onPressed:(){
                print("进入藏品页");
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new ArticlePage();
                }));
              }
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top:80, left: 10,right: 10),
            width: double.infinity,
            child: new Flex(
              direction: Axis.horizontal,
              textBaseline:TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: new GestureDetector(
                    onTap: (){
                      Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
                        return new ThemePage();
                      }));
                    },
                    child: navBtn(Adapt.px(688), new Image.asset("assets/image/home/btn_1.png")),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: new GestureDetector(
                    onTap: (){
                      print("摄影技术发展史");
                    },
                    child: navBtn(Adapt.px(706),new Image.asset("assets/image/home/btn_2.png")),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: new GestureDetector(
                    onTap: (){
                      print("中国制造的摄像机");
                    },
                    child: navBtn(Adapt.px(725), new Image.asset("assets/image/home/btn_3.png")),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: new GestureDetector(
                    onTap: (){
                      print("中国摄影史");
                    },
                    child: navBtn(Adapt.px(659), new Image.asset("assets/image/home/btn_4.png")),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: new GestureDetector(
                    onTap: (){
                      print("丽水摄影文化");
                    },
                    child: navBtn(Adapt.px(688), new Image.asset("assets/image/home/btn_5.png")),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: new GestureDetector(
                    onTap: (){
                      showDialog<Null>(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                          return new AlertDialog(
                            title: new Text('标题'),
                            content: new SingleChildScrollView(
                              child: new ListBody(
                                children: <Widget>[
                                  new Text('内容 1'),
                                  new Text('内容 2'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              new FlatButton(onPressed: (){
                                Navigator.of(context).pop();
                              }, child: new Text("确定"))
                            ],
                          );
                        }
                      );
                    },
                    child: navBtn(Adapt.px(715), new Image.asset("assets/image/home/btn_6.png")),
                  )
                ),

              ],
            ),
          ),
        ],
      ),
      );
  }
}