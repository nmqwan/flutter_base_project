import 'data_login_response.dart';
import 'package:base_project/base_project.dart';
part 'auth_token_response_entity.freezed.dart';
part 'auth_token_response_entity.g.dart';

@freezed
class AuthTokenResponseEntity with _$AuthTokenResponseEntity {
  factory AuthTokenResponseEntity({
    DataLoginResponse? data,
    PagingData? pagingData,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'MetaData') MetaDataRestApi? metaData,
  }) = _AuthTokenResponseEntity;

  factory AuthTokenResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenResponseEntityFromJson(json);
}
