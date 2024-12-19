import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_data_rest_api.freezed.dart';
part 'meta_data_rest_api.g.dart';

@freezed
class MetaDataRestApi with _$MetaDataRestApi {
  factory MetaDataRestApi({
    String? status,
    String? errorCode,
    String? message,
    List<dynamic>? errors,
  }) = _MetaDataRestApi;

  factory MetaDataRestApi.fromJson(Map<String, dynamic> json) =>
      _$MetaDataRestApiFromJson(json);
}
