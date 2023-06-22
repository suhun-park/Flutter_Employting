import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutting/screen/webview_screen.dart';

import 'event/event_screen.dart';
import 'help/help_screen.dart';
import 'home/home_screen.dart';
import 'myuser/myuser_screen.dart';

class RootTab extends StatelessWidget {
  const RootTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.add)),
            BottomNavigationBarItem(icon: Icon(Icons.add)),
            BottomNavigationBarItem(icon: Icon(Icons.add)),
            BottomNavigationBarItem(icon: Icon(Icons.add)),
            BottomNavigationBarItem(icon: Icon(Icons.add)),
          ],),
          body:const IndexedStack(
            index: 5,
            children:[
              HomeScreen(),
              WebViewScreen(),
              MyUserScreen(),
              HelpScreen(),
              EventScreen(),
            ],
          ),
      );
  }
}
