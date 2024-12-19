// ignore_for_file: depend_on_referenced_packages

import 'package:base_project/base_project.dart';
import 'package:tng_ehr/app_config/injector.dart';
import 'package:tng_ehr/blocs/base/observe_network/observe_network_bloc.dart';
import 'package:tng_ehr/blocs/base/observe_network/observe_network_event.dart';
// import 'package:tng_ehr/app_config/injector.dart';
// import 'package:tng_ehr/api/repositories/auth_repo/i_auth_repository.dart';
// import 'package:tng_ehr/models/auth_token_respone_entity/auth_token_respone_entity.dart';

// This class is an implementation of Dio's Interceptor
bool isTimeOutInterceptorCalling = false;

class TimeOutInterceptor extends Interceptor {
  final Dio dio;

  TimeOutInterceptor(this.dio);
  // This function is called when an HTTP request encounters an error
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
    handler.next(options);
  }

  @override
  void onError(err, ErrorInterceptorHandler handler) async {
    // If the response's status code is 401, call the logout function in IAuthRepository
    final observeNetworkBloc = getIt<ObserveNetworkBloc>();

    if ((err.type.name == "connectionError" ||
            (err.response?.statusCode == 408)) &&
        observeNetworkBloc.state.isNetworkConnected == true) {
      if (!isTimeOutInterceptorCalling) {
        isTimeOutInterceptorCalling = true;
        observeNetworkBloc
            .add(ChangeObserveNetworkEvent(isNetworkConnected: false));
        await Future.delayed(
            Duration(seconds: 3)); // Add a delay to simulate processing time
        isTimeOutInterceptorCalling = false;
      }
    }
    return super.onError(err, handler);
  }
}
