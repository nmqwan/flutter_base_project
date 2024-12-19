import 'package:users/services/auth_repository.dart';
import 'package:users/models/auth_token_response_entity/auth_token_response_entity.dart';

abstract class IAuthRepository {
  Future<AuthTokenResponseEntity?> logIn({
    required String username,
    required String password,
  });

  Future<void> logOut();

  Stream<AuthenticationStatus> get status;

  void dispose();
}
