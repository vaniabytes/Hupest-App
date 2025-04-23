import 'package:get/get.dart';
import '../controllers/gurulogincontroller.dart';

class GuruLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuruLoginController>(
      () => GuruLoginController(),
      fenix: true,
    );
  }
}
