import 'package:base_project/base_project.dart';
part 'data_login_response.freezed.dart';
part 'data_login_response.g.dart';

@freezed
class DataLoginResponse with _$DataLoginResponse {
  factory DataLoginResponse({
    String? token,
    List<String>? roles,
    String? tokenExpireTime,
  }) = _DataLoginResponse;

  factory DataLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$DataLoginResponseFromJson(json);
}
