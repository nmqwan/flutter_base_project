import 'package:flutter/material.dart';
import 'package:tng_ehr/blocs/home/home_view.dart';
import 'package:tng_ehr/blocs/splash_screen/splash_screen_view.dart';
import 'package:tng_ehr/blocs/tabs/news/news_view.dart';
import 'package:tng_ehr/blocs/tabs/notification/notification_view.dart';
import 'package:tng_ehr/blocs/tabs/users/login/login_view.dart';
import 'package:tng_ehr/blocs/tabs/users/user_setting/user_setting_view.dart';
import 'package:base_project/base_project.dart';

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return _materialRoute(HomeView());
      case splashRoute:
        return _materialRoute(const SplashScreenView());
      case loginRoute:
        return _materialRoute(const LoginView());
      case notificationRoute:
        return _materialRoute(NotificationView());
      case userSettingRoute:
        return _materialRoute(UserSettingView());
      case newsRoute:
        return _materialRoute(NewsView());
      // case webViewRoute:
      //   final data = settings.arguments as WebViewParam;
      //   return _materialRoute(WebFormView(
      //     formId: data.formId,
      //     machineId: data.machineId,
      //   ));

      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
