import 'package:flutter/material.dart';
import 'package:lssy/widgets/component/PhotoHero.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: new Center(
        child: new PhotoHero(
          photo: 'assets/image/ic_main_tab_my_pre.png',
          width: 300.0,
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) {
                  return new Scaffold(
                    appBar: new AppBar(
                      title: const Text('Flippers Page'),
                    ),
                    body: new Container(
                      // The blue background emphasizes that it's a new route.
                      color: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.topLeft,
                      child: new PhotoHero(
                        photo: 'assets/image/ic_main_tab_my_pre.png',
                        width: 100.0,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  );
                }
            ));
          },
        ),
      ),
    );
  }
}
