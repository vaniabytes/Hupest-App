import 'package:get/get.dart';

class SiswaLoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;

  // Fungsi login untuk siswa (bisa sesuaikan dengan logika login)
  void loginSiswa() {
    if (username.value == "siswa" && password.value == "1234") {
      // Jika username dan password cocok, misalnya redirect ke halaman home
      Get.toNamed('/home');
    } else {
      // Misalnya, show alert jika login gagal
      Get.snackbar("Login Gagal", "Username atau password salah");
    }
  }
}
