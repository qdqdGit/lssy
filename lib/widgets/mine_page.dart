import 'package:flutter/material.dart';
import 'package:lssy/widgets/mine/contact_item.dart';
import 'package:lssy/widgets/mine/menu_item.dart';

class MinePage extends StatefulWidget{
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> with AutomaticKeepAliveClientMixin<MinePage>{
  final double _appBarHeight = 180.0;
  final String _userHead = 'https://img01.sogoucdn.com/net/a/04/link?appid=100520145&url=http%3A%2F%2Fimg02.store.sogou.com%2Fapp%2Fa%2F10010016%2F3932858af475958e1028fe5c73295cc7';
  
  @override
  bool get wantKeepAlive => true;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 242, 242, 245),
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            expandedHeight: _appBarHeight,
            flexibleSpace: new FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  const DecoratedBox(decoration: const BoxDecoration(
                    gradient: const LinearGradient(
                      begin: const Alignment(0.0, -1.0),
                      end: const Alignment(0.0, -0.4),
                      colors: const <Color>[
                        const Color(0x00000000),
                        const Color(0x00000000)
                      ],
                    ),
                  )),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                        flex: 3,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Padding(padding: const EdgeInsets.only(top: 30.0,left: 30.0,bottom: 15.0,),
                            child: new Text(
                              'Kimi he',
                              style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0
                              ),
                            ),
                            ),
                            new Padding(padding: const EdgeInsets.only(left: 30.0),
                              child: new Text(
                                '在职-不考虑机会',
                                style: new TextStyle(
                                  color: Colors.white,fontSize: 15.0
                                ),
                              ),),
                          ],
                        ),
                      ),
                      new Expanded(
                        flex: 1,
                        child: new Padding(padding: const EdgeInsets.only(top: 40.0,right: 30.0),
                        child: new CircleAvatar(radius: 35.0,backgroundImage: new NetworkImage(_userHead),),),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          new SliverList(
              delegate: new SliverChildListDelegate(<Widget>[
                new Container(
                  color: Colors.white,
                  child: new Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new ContactItem(
                          count: '696',
                          title: '沟通过',
                        ),
                        new ContactItem(
                          count: '0',
                          title: '面试',
                        ),
                        new ContactItem(
                          count: '71',
                          title: '已投递',
                        ),
                        new ContactItem(
                          count: '53',
                          title: '感兴趣',
                        )
                      ],
                    ),
                  ),
                ),
                new Container(
                  color: Colors.white,
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      new MenuItem(
                        icon: Icons.face,
                        title: '体验新版本',
                      ),
                      new MenuItem(
                        icon: Icons.print,
                        title: '我的微简历',
                      ),
                      new MenuItem(
                        icon: Icons.archive,
                        title: '附件简历',
                      ),
                      new MenuItem(
                        icon: Icons.home,
                        title: '管理求职意向',
                      ),
                      new MenuItem(
                        icon: Icons.title,
                        title: '提升简历排名',
                      ),
                      new MenuItem(
                        icon: Icons.chat,
                        title: '牛人问答',
                      ),
                      new MenuItem(
                        icon: Icons.assessment,
                        title: '关注公司',
                      ),
                      new MenuItem(
                        icon: Icons.add_shopping_cart,
                        title: '钱包',
                      ),
                      new MenuItem(
                        icon: Icons.security,
                        title: '隐私设置',
                      ),
                    ],
                  ),
                )
              ]))
        ],
      ),
    );
  }
}