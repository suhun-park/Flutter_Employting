import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutting/root_tab/view/root_tab.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

import 'home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("스플래시 이미지"),
      ),
      body: TextButton(
        onPressed: () {Get.to(() => RootTab());
      }, child: Text("넘기기"),),
    );
  }
}
