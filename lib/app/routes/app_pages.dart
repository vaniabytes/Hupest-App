import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/siswa_login/bindings/siswaloginbinding.dart';
import '../modules/siswa_login/views/siswaloginview.dart';
import '../modules/guru_login/bindings/guruloginbinding.dart';
import '../modules/guru_login/views/guruloginview.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
    ),
    GetPage(
      name: Routes.SISWA,
      page: () => const SiswaLoginView(),
      binding: SiswaLoginBinding(),
    ),
    GetPage(
      name: Routes.GURU,
      page: () => const GuruLoginView(),
      binding: GuruLoginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}