import 'package:flutter/material.dart';
import 'package:flutting/screen/signin/signin_screen.dart';
import 'package:flutting/screen/signup/signup_screen.dart';
import 'package:get/route_manager.dart';

import '../root_tab/view/root_tab_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("스플래시 이미지"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Get.to(() => const RootTab());
            },
            child: const Text("넘기기"),
          ),
          TextButton(
            onPressed: () {
              Get.to(() => SignUpScreen());
            },
            child: const Text('회원가입'),
          ),
          TextButton(
            onPressed: () {
              Get.to(() => const SigninScreen());
            },
            child: const Text('로그인'),
          ),
        ],
      ),
    );
  }
}
