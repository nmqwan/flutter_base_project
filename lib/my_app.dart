// ignore_for_file: depend_on_referenced_packages

import 'package:base_project/base_project.dart';
import 'package:flutter/material.dart';
import 'package:tng_ehr/blocs/base/observe_network/observe_network_bloc.dart';
import 'package:tng_ehr/blocs/base/observe_network/observe_network_state.dart';
import 'app_config/app_route.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tng_ehr/blocs/base/authentication/authentication_bloc.dart';
import 'package:tng_share/tng_share.dart' as l10;

class MyApp extends StatefulWidget {
  final ThemeData lightThem, darkTheme;
  const MyApp({super.key, required this.darkTheme, required this.lightThem});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.circle
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.white
      ..backgroundColor = Theme.of(context).primaryColor
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      // ..maskColor = Theme.of(context).primaryColor.withOpacity(0.5)
      ..userInteractions = true
      ..dismissOnTap = true;

    return FutureBuilder<ThemeData>(
        future: getMaterialYouTheme(),
        builder: (_, snap) {
          return MaterialApp(
            title: 'TNG eHR',
            debugShowCheckedModeBanner: RunConfig.isDev,
            navigatorKey: _navigatorKey,
            theme: widget.lightThem,
            darkTheme: widget.darkTheme,
            themeMode: ThemeMode.system,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              l10.S.delegate
            ],
            supportedLocales: l10.S.delegate.supportedLocales,
            builder: (context, child) {
              child = EasyLoading.init()(context, child);
              child = MultiBlocListener(
                listeners: [
                  BlocListener<ObserveNetworkBloc, ObserveNetworkState>(
                    listener: (context, state) {
                      if (state.isNetworkConnected != null &&
                          !state.isNetworkConnected!) {
                        EasyLoading.showError(
                            l10.S.of(context).noInternetConnection);
                      }
                    },
                  ),
                  BlocListener<AuthenticationBloc, AuthenticationState>(
                    listener: (context, state) {
                      _navigator.pushNamedAndRemoveUntil(
                          splashRoute, (Route<dynamic> route) => false);
                      // switch (state.status) {
                      //   case AuthenticationStatus.authenticated:
                      //     //! đã login
                      //     //! nav to homepage
                      //     log("--------------authenticated--------------"
                      //         .toUpperCase());
                      //     _navigator.pushNamedAndRemoveUntil(
                      //         homeRoute, (Route<dynamic> route) => false);
                      //     // navigateAndFinish(context, HomePage());
                      //     break;
                      //   case AuthenticationStatus.unauthenticated:
                      //     //! chưa login hoặc 401
                      //     //! nav to login
                      //     log("--------------unauthenticated--------------"
                      //         .toUpperCase());
                      //     _navigator.pushNamedAndRemoveUntil(
                      //         loginRoute, (Route<dynamic> route) => false);
                      //     // navigateAndFinish(context, const LoginPage());
                      //     break;
                      //   default:
                      //     log("--------------splash screen--------------"
                      //         .toUpperCase());
                      //     _navigator.pushNamedAndRemoveUntil(
                      //         splashRoute, (Route<dynamic> route) => false);

                      //     // navigateAndFinish(context, SplashScreenPage());
                      //     break;
                      // }
                    },
                  ),
                ],
                child: Stack(
                  children: [
                    child,
                  ],
                ),
              );
              return child;
            },
            // home: const PermissionListPage()
            onGenerateRoute: AppRoutes.onGenerateRoutes,
          );
        });
  }
}
