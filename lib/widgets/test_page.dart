
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lssy/model/BobbleBean.dart';
import 'package:lssy/unit/unit.dart';

class TestPage extends StatefulWidget{
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> with TickerProviderStateMixin{
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
    SystemChrome.setEnabledSystemUIOverlays([]);
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
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  Colors.white,
      ////填充布局
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // 第一部分 背景
            Positioned.fill(
                child: Image.asset(
                  "assets/image/upload/xuh.jpeg",
                  fit: BoxFit.fill,
                )
            ),
            //第二部分 雪花
            CustomPaint(
              size: MediaQuery.of(context).size,
              // 画布
              painter: SnowCustomMyPainter(list: _list,random: _random),
            )
          ],
        ),
      ),
    );
  }
}

class SnowCustomMyPainter extends CustomPainter{
  List<BobbleBean> list;
  Random random;

  SnowCustomMyPainter({this.list,this.random});

  Paint _paint = new Paint()..isAntiAlias = true;

  void paint(Canvas canvas,Size size){
    // 在绘制前重新计算每个点的位置
    list.forEach((element) {
      double randoms = 0.1;//random.nextDouble();
      double dx = 0;//randoms * 2.0 - 1.0;
      double dy = element.speed;
      // 位置偏移量计算
      element.position += Offset(dx, dy);
      // 重置位置
      if(element.position.dy > size.height){
        element.position = element.origin;
      }
    });

    list.forEach((element) {
      _paint.color = element.color;
      canvas.drawCircle(element.position, element.radius, _paint);
    });
  }

  //刷新 控制
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate){
    // 返回false 不刷新
    return true;
  }
}