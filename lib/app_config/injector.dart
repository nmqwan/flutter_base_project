import 'package:base_project/base_project.dart';
import 'package:tng_ehr/blocs/base/authentication/authentication_bloc.dart';
import 'package:tng_ehr/blocs/base/observe_network/observe_network_bloc.dart';
import 'package:tng_ehr/blocs/base/responsive/responsive_bloc.dart';
import 'package:users/users.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  getIt
    ..registerLazySingleton<IAuthRepository>(() => AuthRepository())
    ..registerLazySingleton<AuthenticationBloc>(
      () => AuthenticationBloc(authRepository: getIt()),
    )
    ..registerLazySingleton<ResponsiveBloc>(() => ResponsiveBloc())
    ..registerLazySingleton<ObserveNetworkBloc>(
      () => ObserveNetworkBloc(),
    );
}
