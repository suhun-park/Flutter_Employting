import 'package:flutter/cupertino.dart';
import 'package:flutting/screen/help/help_screen.dart';
import 'package:flutting/screen/webview/webview_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screen/event/event_screen.dart';
import '../screen/home/home_screen.dart';
import '../screen/myuser/myuser_screen.dart';

class GetRouter {
  static final List<GetPage> getPages = [
    GetPage(name: '/', page: () => HomeScreen()),
    GetPage(name: '/event', page: () =>EventScreen()),
    GetPage(name: '/help', page: () =>HelpScreen()),
    GetPage(name: '/myuser', page: () =>MyUserScreen()),
    GetPage(name: '/WebView', page: () =>WebViewScreen()),
  ];
}
