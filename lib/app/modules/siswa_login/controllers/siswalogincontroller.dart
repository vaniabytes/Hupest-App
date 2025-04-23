import 'package:get/get.dart';

class SiswaLoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;

  void loginSiswa() {
    if (username.value == "siswa" && password.value == "1234") {
      Get.toNamed('/home');
    } else {
      Get.snackbar("Login Gagal", "Username atau password salah");
    }
  }
}
