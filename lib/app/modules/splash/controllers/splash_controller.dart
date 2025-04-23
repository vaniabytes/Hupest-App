import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  var backgroundColor = const Color(0xFF6C9056).obs;
  var textColor = Colors.white.obs;
  var textVisible = false.obs;

  @override
  void onInit() {
    super.onInit();

    Future.delayed(const Duration(milliseconds: 400), () {
      backgroundColor.value = const Color(0xFFE0E5DD);
      textColor.value = const Color(0xFF6C9056);
      textVisible.value = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.HOME);
    });
  }
}
