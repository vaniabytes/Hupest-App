import 'package:get/get.dart';
import '../controllers/siswalogincontroller.dart';

class SiswaLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SiswaLoginController>(
      () => SiswaLoginController(),
      fenix: true,
    );
  }
}
