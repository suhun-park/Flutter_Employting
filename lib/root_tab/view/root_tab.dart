import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutting/screen/webview/webview_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../screen/event/event_screen.dart';
import '../../screen/help/help_screen.dart';
import '../../screen/home/home_screen.dart';
import '../../screen/myuser/myuser_screen.dart';
import '../controller/root_tab_controller.dart';

class RootTab extends GetView<RootTabController> {
  const RootTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RootTabController());
    final List<String> list = List.generate(10, (index) => 'Text $index');
    return Obx (()=> Scaffold(
      body: homeIndex(),
        bottomNavigationBar:homeBottom())
      );
  }
  Widget homeIndex() {
    return IndexedStack(
      index: controller.pageIndex.value,
      children: [
        HomeScreen(),
        WebViewScreen(),
        MyUserScreen(),
        HelpScreen(),
        EventScreen(),
      ],
    );
  }
  Widget homeBottom() {
    List<BottomNavigationBarItem> bottomItems = [
      BottomNavigationBarItem(icon: Icon(Icons.add),label: '홈'),
      BottomNavigationBarItem(icon: Icon(Icons.add),label: '웹뷰'),
      BottomNavigationBarItem(icon: Icon(Icons.add),label: '질문'),
      BottomNavigationBarItem(icon: Icon(Icons.add),label: '행사안내'),
      BottomNavigationBarItem(icon: Icon(Icons.add),label: '내정보'),
    ];
    return BottomNavigationBar(

      onTap: controller.changePageIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      selectedFontSize: 12,
      unselectedFontSize: 10,
      currentIndex: controller.pageIndex.value,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: bottomItems,
    );
  }
}

