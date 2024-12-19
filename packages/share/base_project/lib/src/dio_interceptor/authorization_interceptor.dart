// ignore_for_file: depend_on_referenced_packages

import 'package:base_project/base_project.dart';
import 'package:users/services/i_auth_repository.dart';
import 'package:tng_ehr/app_config/injector.dart';
// import 'package:tng_ehr/app_config/injector.dart';
// import 'package:tng_ehr/api/repositories/auth_repo/i_auth_repository.dart';
// import 'package:tng_ehr/models/auth_token_respone_entity/auth_token_respone_entity.dart';

// This class is an implementation of Dio's Interceptor
class AuthorizationInterceptor extends Interceptor {
  final Dio dio;
  AuthorizationInterceptor(this.dio);
  // This function is called when an HTTP request encounters an error
  @override
  void onError(err, ErrorInterceptorHandler handler) async {
    // If the response's status code is 401, call the logout function in IAuthRepository
    if (err.response?.statusCode == 401) {
      getIt<IAuthRepository>().logOut();
    }
    return super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    if (response.statusCode == 200 &&
        response.toString().contains('Đăng nhập tài khoản của bạn')) {
      getIt<IAuthRepository>().logOut();
    }
  }
}
