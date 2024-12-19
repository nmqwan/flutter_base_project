import 'dart:async';

import 'package:base_project/base_project.dart';
import 'package:users/models/auth_token_response_entity/auth_token_response_entity.dart';
import 'package:users/services/i_auth_repository.dart';
import 'package:users/services/user_service.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthRepository extends BaseDio implements IAuthRepository {
  final _controller = StreamController<AuthenticationStatus>();

  AuthRepository();

  /// An asynchronous getter that checks if the current user is authenticated or not.
  ///
  /// If the user has a refresh token stored in cache, it yields an [AuthenticationStatus.authenticated] stream event.
  /// Otherwise, it yields an [AuthenticationStatus.unauthenticated] event.
  ///
  /// Additionally, it yields all events from the private [_controller] stream.
  @override
  Stream<AuthenticationStatus> get status async* {
    var token = CacheHelper.getString(key: ACCESS_TOKEN);
    if (token.isNotEmpty) {
      yield AuthenticationStatus.authenticated;
    } else {
      yield AuthenticationStatus.unauthenticated;
    }
    yield* _controller.stream;
  }

  /// Logs in a user with the provided credentials.
  ///
  /// Returns an [AuthTokenResponeEntity] containing an access token.
  /// Throws an error if there was an issue with logging in.
  @override
  Future<AuthTokenResponseEntity?> logIn({
    required String username,
    required String password,
  }) async {
    var dio = await getDio(baseUrl: RunConfig.baseUrl);
    AuthTokenResponseEntity? result;

    await UserService(dio)
        .login({'username': username, 'password': password}).then((value) {
      result = value;
    }).catchError((err) {
      if (err.runtimeType == DioException) {
        throw throwErr(err as DioException);
      }
    });

    return result;
  }

  /// This method logs out the current user by cleaning cache and emitting [AuthenticationStatus.unauthenticated].
  ///
  /// Throws an error if cache cleaning fails.
  @override
  Future<void> logOut() async {
    //!clean cache
    await CacheHelper.clear();
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  /// Disposes the authentication bloc by closing [_controller].
  @override
  void dispose() => _controller.close();
}
