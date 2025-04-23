part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH = _Paths.SPLASH;
  static const HOME = _Paths.HOME;
  static const SISWA = _Paths.SISWA;
  static const GURU = _Paths.GURU;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const SISWA = '/siswa-login';
  static const GURU = '/guru-login';
}
