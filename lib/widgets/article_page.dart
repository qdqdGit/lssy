import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:lssy/widgets/component/PageHeader.dart';
import 'dart:ui';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}
class _ArticlePageState extends State<ArticlePage>{
  final double statusBarHeight = MediaQueryData.fromWindow(window).padding.top;
  String articleText1 = '从公元前五世纪中国古代学者在小孔成像方面的探索、十六世纪欧洲文艺复兴时期出现暗箱、十九世纪初欧洲研究者对各种光敏化合物进行研究并拍摄出世界上第一张照片，直到1839年8月19日法国向世界公布摄影术发明，人类通过不断研究探索，终于实现了记录影像的梦想。';
  String articleText2 = '摄影术发明后，人们不断改进相机构造、感光材料和照片制作工艺，相机功能不断改良，成像技术从银版法、湿版法、干版法，再到胶片和数码技术，这一步步的演进过程，极大地反映出人类智慧的创造性和对科学永无止境的探索精神。';
  String articleText3 = '19世纪40年代摄影术传入中国后，在中国社会发展变革中发挥出了它应有的作用。摄影以其独特的方式把世界展现给中国，也把中国介绍给世界。摄影术传入丽水后，经过不同历史时期，从“照相记录”到“艺术创作”逐步发展，摄影文化已经深深地融入丽水，成为人们生活的一部分，也成为丽水城市的金名片。';
  String articleText4 = '回顾摄影的发展历程，我们有足够的理由需要摄影，它让我们回望过去、体验当下、感知未来。';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: EdgeInsets.only(top: 10),
        color: Color.fromARGB(255, 234, 233, 230),
        child:ListView(
          padding: EdgeInsets.only(top: statusBarHeight,left: 20,right: 20),
          children: <Widget>[
            new Container(
                child: PageHeader()
            ),
            new Container(
              padding: EdgeInsets.only(top: 30),
                child: new Text(
                  "光影世纪昭风华",
                  style: new TextStyle(fontSize: 28,fontFamily: 'NotoSans',letterSpacing: 2),
                  textAlign: TextAlign.center,
                )
            ),
            new Container(
              padding: EdgeInsets.only(bottom: 20),
              child: new RichText(
                  textAlign: TextAlign.justify,//decorationStyle
                  textDirection: TextDirection.ltr,
                  text: TextSpan(
                    style: new TextStyle(color:Colors.black,fontSize: 19,fontFamily: 'NotoSans',height: 1.8,letterSpacing: 2),
                    children: <TextSpan>[
                        TextSpan(
                            text: articleText1+"\n\n",
                        ),
                        TextSpan(
                            text: articleText2+"\n\n"
                        ),
                        TextSpan(
                            text: articleText3+"\n\n"
                        ),
                        TextSpan(
                            text: articleText4
                        ),
                    ],
                  ),
              )
            )
          ],
        )
      )
    );
  }
}