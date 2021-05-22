import 'package:flutter/cupertino.dart';

// 定义雪花模型 用来保存雪花的基本属性信息
class BobbleBean{
  //位置
  Offset position;
  // 初始位置
  Offset origin;
  // 颜色
  Color color;
  // 运动速度
  double speed;
  // 半径
  double radius;
}