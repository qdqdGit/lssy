//全局定义获取颜色的方法
import 'dart:math';
import 'dart:ui';

Color getRandomWhiteColor(Random random) {
  //透明度 0 ~ 200  255是不透明
  int a = random.nextInt(200);
  return Color.fromARGB(a, 235, 235, 235);
}