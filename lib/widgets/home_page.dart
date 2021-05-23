import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lssy/model/BobbleBean.dart';
import 'package:lssy/unit/Adapt.dart';
import 'package:lssy/unit/unit.dart';
import 'package:lssy/widgets/bookmark_page.dart';
import 'package:lssy/widgets/component/VerticalTextButton.dart';
import 'package:lssy/widgets/article_page.dart';
import 'package:lssy/widgets/test_page.dart';
import 'package:lssy/widgets/theme_page.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  // 创建一个集合来保存气泡
  List<BobbleBean> _list = [];

  // 随机数
  Random _random = new Random(DateTime.now().microsecondsSinceEpoch);

  // 来个动画控制器
  AnimationController _animationController;

  void initState(){
    super.initState();

    Future.delayed(Duration.zero,(){
      initData();
    });

    // 创建动画控制器1秒
    _animationController = new AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 10000)
    );

    // 执行刷新监听
    _animationController.addListener(() {
      setState(() {});
    });

    // 开启气泡的运动
    _animationController.repeat();

    // 状态栏隐藏
    // SystemChrome.setEnabledSystemUIOverlays([]);
  }

  void initData(){
    for (int i = 0;i<2000;i++){
      BobbleBean bean = new BobbleBean();
      // 获取随机透明度白色
      bean.color = getRandomWhiteColor(_random);
      // 设置位置 先来个默认的 绘制的时候再修改
      double x = _random.nextDouble() * MediaQuery.of(context).size.width;
      double y = _random.nextDouble() * MediaQuery.of(context).size.height;
      double z = _random.nextDouble() + 0.5;
      bean.speed = _random.nextDouble() + 0.01 / z;
      bean.position = Offset(x,y);
      bean.origin = Offset(x,0);

      //设置半径
      bean.radius = 2.0 / z;
      _list.add(bean);
    }
  }

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
      body: new Container(
        width: double.infinity,
        height: double.infinity,
        child:CustomPaint(
          size: MediaQuery.of(context).size,
          // 画布
          // foregroundPainter: SnowCustomMyPainter(list: _list,random: _random),
          child:new Column(
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
                              return new BookmarkPage();
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

        ),
      ),
    );
  }
}