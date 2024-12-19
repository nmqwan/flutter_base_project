import 'package:dio/dio.dart';
import 'package:users/models/auth_token_response_entity/auth_token_response_entity.dart'; 
import 'package:retrofit/retrofit.dart';

// ignore_for_file: depend_on_referenced_packages
part 'user_service.g.dart';

@RestApi()
abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @POST("Account/JWTLogin")
  Future<AuthTokenResponseEntity> login(@Body() Map<String, dynamic> body);

  @POST("Account/JWTLogin")
  @FormUrlEncoded()
  Future<AuthTokenResponseEntity> authToken({
    @Field() required String username,
    @Field() required String password,
  });
}
