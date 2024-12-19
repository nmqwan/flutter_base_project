import 'package:base_project/base_project.dart';
import 'dart:io';

class RunConfig {
  static var baseUrl = '',
      clientId = 'gumobilebackend',
      clientSecret = r'gumobile1Q2w3E$';
  static bool isDev = false;
  static int maxResultCount = 999;
}

enum ActionPop { deleteSophieu, nothing }

Future runAppConfigProd() async {
  RunConfig.baseUrl = 'https://devdemo.trungnguyenlegend.com/';
  RunConfig.isDev = false;
  Log.logEnable = false;
  setOrientationPortrait();
}

Future runAppConfigDev() async {
  RunConfig.baseUrl = 'https://devdemo.trungnguyenlegend.com/';
  RunConfig.isDev = true;
  Log.logEnable = true;
  setOrientationPortrait();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
