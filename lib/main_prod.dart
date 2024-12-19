import 'dart:convert';
import 'dart:io';

import 'package:base_project/base_project.dart';

import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:json_theme/json_theme.dart';
import 'package:tng_ehr/app_config/injector.dart';
import 'package:tng_ehr/root_provider.dart';
import 'package:tng_ehr/app_config/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  await configureDependencies();
  F.appFlavor = Flavor.prod;
  chatGPTAPIkey = "YOUR_KEY";

  HttpOverrides.global = MyHttpOverrides();
  runAppConfigProd();

  final lightThemeStr =
      await rootBundle.loadString('assets/theme/appainter_theme_light.json');
  final lightThemeJson = jsonDecode(lightThemeStr);
  final lightTheme = ThemeDecoder.decodeThemeData(lightThemeJson)!;

  final darkThemeStr =
      await rootBundle.loadString('assets/theme/appainter_theme_dark.json');
  final darkThemeJson = jsonDecode(darkThemeStr);
  final darkTheme = ThemeDecoder.decodeThemeData(darkThemeJson)!;

  Bloc.observer = MyBlocObserver();
  runApp(RootProvider(
    darkTheme: darkTheme,
    lightThem: lightTheme,
  ));
}
