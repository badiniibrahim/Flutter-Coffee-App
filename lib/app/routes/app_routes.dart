part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static Future<String> get INITIAL async {
    return Routes.SPLASH;
  }

  static const SPLASH = _Paths.SPLASH;
  static const SIGN_IN = _Paths.SIGN_IN;
  static const SIGN_UP = _Paths.SIGN_UP;
  static const MAIN = _Paths.MAIN;
  static const HOME = _Paths.HOME;
  static const SAVED = _Paths.SAVED;
  static const SHOP = _Paths.SHOP;
  static const SETTING = _Paths.SETTING;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = "/splash";
  static const SIGN_IN = '/sign-in';
  static const SIGN_UP = '/sign-up';
  static const MAIN = '/main';
  static const HOME = '/home';
  static const SAVED = '/saved';
  static const SHOP = '/shop';
  static const SETTING = '/setting';
}
