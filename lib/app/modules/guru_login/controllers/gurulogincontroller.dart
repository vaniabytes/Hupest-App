import 'package:get/get.dart';

class GuruLoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;

  // Fungsi login untuk guru (bisa sesuaikan dengan logika login)
  void loginGuru() {
    if (username.value == "guru" && password.value == "1234") {
      // Jika username dan password cocok, misalnya redirect ke halaman home
      Get.toNamed('/home');
    } else {
      // Misalnya, show alert jika login gagal
      Get.snackbar("Login Gagal", "Username atau password salah");
    }
  }
}
