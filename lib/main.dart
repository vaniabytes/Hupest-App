import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hupest',
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,  // SplashView
      getPages: AppPages.routes,
      theme: ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: const Color(0xFFE0E5DD),
      ),
    );
  }
}
