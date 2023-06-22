import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutting/firebase_options.dart';
import 'package:flutting/router/router_data.dart';
import 'package:flutting/screen/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutting',
      getPages: GetRouter.getPages,
      home: const SplashScreen(),
    );

  }
}

