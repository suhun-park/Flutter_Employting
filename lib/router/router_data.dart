import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screen/home/home_screen.dart';

class GetRouter {
  static final List<GetPage> getPages = [
    GetPage(name: '/', page: () => HomeScreen()),
  ];
}
