import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  // Warna background dan teks sebagai observable
  var backgroundColor = const Color(0xFF6C9056).obs; // awalnya hijau
  var textColor = Colors.white.obs; // awalnya putih
  var textVisible = false.obs;

  @override
  void onInit() {
    super.onInit();

    // Ganti warna setelah sedikit delay biar smooth
    Future.delayed(const Duration(milliseconds: 400), () {
      backgroundColor.value = const Color(0xFFE0E5DD); // ganti bg ke abu
      textColor.value = const Color(0xFF6C9056); // teks jadi hijau
      textVisible.value = true;
    });

    // Setelah 3 detik, pindah ke halaman Home
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.HOME);
    });
  }
}
