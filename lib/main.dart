import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:lssy/splash.dart';
void main(){
  runApp(App());
}
class App extends StatelessWidget {
  final Store<int> store;
  final String title;

  App({Key key, this.store,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(color: Colors.white),
        brightness: Brightness.light,
        primaryColor: new Color.fromARGB(255, 0, 215, 198),
        accentColor: Colors.cyan[300],
      ),
      home: SplashPage(),
    );
  }
}

class MainPage extends StatefulWidget{
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage>{

  BottomNavigationBarItem _buildItem({String icon,String text}){
    return BottomNavigationBarItem(
      icon: new Image.asset(
        icon,
        width: 35.0,
        height: 35.0,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _buildButtonNavBar(){
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(
          icon: "assets/image/ic_main_tab_find_nor.png",
          text: "职位"
        ),
        _buildItem(
            icon: "assets/image/ic_main_tab_company_nor.png",
            text: "公司"
        ),
        _buildItem(
            icon: "assets/image/ic_main_tab_contacts_nor.png",
            text: "消息"
        ),
        _buildItem(
            icon: "assets/image/ic_main_tab_my_nor.png",
            text: "我的"
        )
      ],
      onTap: _onSelectTab,
    );
  }

  void _onSelectTab(int index) {
    print("点击底部导航条:"+index.toString());
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: Center(
        child: new Text("首页文字"),
      ),
      bottomNavigationBar: _buildButtonNavBar()
    );
  }
}

