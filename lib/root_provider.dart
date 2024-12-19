import 'package:flutter/material.dart';
import 'package:tng_ehr/app_config/injector.dart';
import 'package:tng_ehr/blocs/base/observe_network/observe_network_bloc.dart'; 
import 'package:users/services/auth_repository.dart';
import 'package:base_project/base_project.dart';
import 'package:tng_ehr/blocs/base/authentication/authentication_bloc.dart';
import 'package:tng_ehr/blocs/base/responsive/responsive_bloc.dart';
// import 'package:tng_ehr/blocs/splash_screen/splash_screen_bloc.dart';
// import 'package:tng_ehr/blocs/splash_screen/splash_screen_event.dart';
import 'package:tng_ehr/my_app.dart';

class RootProvider extends StatelessWidget {
  final ThemeData lightThem, darkTheme;
  const RootProvider({
    super.key,
    required this.darkTheme,
    required this.lightThem,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          //! gọi các bloc global ví dụ như:
          //! authen để interceptor gọi logout khi status code 401
          //! tracking
          // BlocProvider(
          //   create: (_) => getIt<PermisionListBloc>(),
          // ),
          BlocProvider(
            create: (_) => getIt<AuthenticationBloc>()
              ..add(const AuthenticationInit(AuthenticationStatus.unknown)),
          ),
          BlocProvider(
            create: (_) => getIt<ResponsiveBloc>()..add(InitResponsiveEvent()),
          ),
          BlocProvider(
            create: (_) => getIt<ObserveNetworkBloc>(),
          ),
          // BlocProvider(
          //   create: (_) => SplashScreenBloc()
          //     ..add(InitSplashScreenEvent())
          //     ..add(LoadDataSplashScreenEvent()),
          // ),
        ],
        child: MyApp(
          darkTheme: darkTheme,
          lightThem: lightThem,
        ));
  }
}
