import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:lssy/unit/Adapt.dart';
import 'package:lssy/widgets/component/BookmarkHead.dart';
import 'package:lssy/widgets/component/PageHeader.dart';
import 'package:lssy/widgets/component/TextListItem.dart';

import 'component/BookmarkSynopsis.dart';

//TODO:书签页
class BookmarkPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BookmarkPage();
}

class _BookmarkPage extends State<BookmarkPage>{
  Color _tabColor = Colors.white;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 233, 230),
      body: new Container(
        padding: EdgeInsets.only(top: 10,right: Adapt.px(37)),
        child: new ListView(
          children: <Widget>[
            new Container(
              child: new PageHeader(),
              padding: new EdgeInsets.only(bottom: Adapt.px(42)),
            ),
            new Container(
              child: new BookmarkHead(
                height: Adapt.px(110),
                left: new Container(
                    child: new Text('前言',style: TextStyle(
                        fontSize: Adapt.px(40),
                        fontFamily: '汉仪细圆简体',
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 71, 71, 71)
                    )),
                    alignment: Alignment.center,
                ),
                right: new Container(
                  child: new Image(
                    image: AssetImage("assets/image/upload/2.jpg"),
                    repeat: ImageRepeat.noRepeat,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            new BookmarkHead(
              height: Adapt.px(247),
              left: new Container(
                child: new Image(
                  image: AssetImage("assets/image/upload/11.png"),
                  fit: BoxFit.fill,
                  height: Adapt.px(250),
                ),
              ),
              right: new BookmarkSynopsis(
                titles: '摄影术前史',
                listss: [
                  '视频', '小孔成像', '暗箱', '早期的实验与发现'
                ],
              ),
            ),
            new BookmarkHead(
              height: Adapt.px(247),
              left: new Container(
                child: new Image(
                  image: AssetImage("assets/image/upload/22.png"),
                  fit: BoxFit.fill,
                  height: Adapt.px(250),
                ),
              ),
              right: new BookmarkSynopsis(
                titles: '摄影术的诞生',
                listss: [
                  '约瑟夫·尼塞福尔·尼埃普斯', '路易·雅克·芒代·达盖尔', '威廉·亨利·福克斯·塔尔博特'
                ],
              ),
            ),
            new BookmarkHead(
              height: Adapt.px(247),
              left: new Container(
                child: new Image(
                  image: AssetImage("assets/image/upload/33.png"),
                  fit: BoxFit.fill,
                  height: Adapt.px(250),
                ),
              ),
              right: new BookmarkSynopsis(
                titles: '摄影技术发展',
                listss: [
                  '摄影技术早期发展', '明胶银盐时代', '数码时代', '相机'
                ],
              )
            ),
            new BookmarkHead(
                height: Adapt.px(247),
                left: new Container(
                  child: new Image(
                    image: AssetImage("assets/image/upload/44.png"),
                    fit: BoxFit.fill,
                    height: Adapt.px(250),
                  ),
                ),
                right: new BookmarkSynopsis(
                  titles: '电影的发明',
                  listss: [
                    '文字介绍', '迈布里奇作品', '电影原理', '摄像机+放映机'
                  ],
                )
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   isExtended: true,
      //   child: Container(
      //     width: Adapt.px(82),
      //     height: Adapt.px(82),
      //     child: Text('首'),
      //     alignment: Alignment.center,
      //     decoration: BoxDecoration(
      //       color: Color.fromARGB(255, 243, 105, 73),
      //       borderRadius: BorderRadius.circular(50)
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
      //   onPressed: (){
      //     //TODO:应当返回到首页,不为上一页
      //     Navigator.pop(context);
      //   },
      // ),
      floatingActionButton:Container(
        child:Ink(
          width: Adapt.px(162),
          height: Adapt.px(104),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
          ),
          child: UnconstrainedBox(
            child: Container(
                child: new InkResponse(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  radius: Adapt.px(45),
                  child: new Container(
                      height: Adapt.px(82),
                      width: Adapt.px(82),
                      alignment: Alignment.center,
                      child: new Text('首',style: new TextStyle(
                          color: Colors.white,
                          fontSize: Adapt.px(45),
                          fontFamily: '汉仪细圆简体',
                          fontWeight: FontWeight.bold
                      ),),
                      decoration:BoxDecoration(
                          color: Color.fromARGB(255, 243, 105, 73),
                          borderRadius: BorderRadius.all(Radius.circular(50))
                      )
                  )
                ),
            ),
          ),
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}