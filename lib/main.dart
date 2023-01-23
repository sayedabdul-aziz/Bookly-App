import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'features/splash_screen/presentation/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColor.primary),
      home: const SplashScreen(),
    );
  }
}
