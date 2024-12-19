import 'package:base_project/base_project.dart';

class AppConfig {
  static final AppConfig _instance = AppConfig._internal();
  double? fontSize;

  AppConfig._internal();

  factory AppConfig(BuildContext context) {
    if (BaseResponsiveWidget.isSmallScreen(context)) {
      _instance.fontSize = 14;
    } else if (BaseResponsiveWidget.isMediumScreen(context)) {
      _instance.fontSize = 20;
    } else {
      _instance.fontSize = 25;
    }

    return _instance;
  }

  static AppConfig get instance => _instance;
}
