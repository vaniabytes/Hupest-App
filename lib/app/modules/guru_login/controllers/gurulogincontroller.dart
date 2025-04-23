import 'package:get/get.dart';

class GuruLoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;

  void loginGuru() {
    if (username.value == "guru" && password.value == "1234") {
      Get.toNamed('/home');
    } else {
      Get.snackbar("Login Gagal", "Username atau password salah");
    }
  }
}
