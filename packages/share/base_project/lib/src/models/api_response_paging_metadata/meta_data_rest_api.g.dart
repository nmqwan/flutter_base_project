// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_data_rest_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaDataRestApiImpl _$$MetaDataRestApiImplFromJson(
        Map<String, dynamic> json) =>
    _$MetaDataRestApiImpl(
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
      message: json['message'] as String?,
      errors: json['errors'] as List<dynamic>?,
    );

Map<String, dynamic> _$$MetaDataRestApiImplToJson(
        _$MetaDataRestApiImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'message': instance.message,
      'errors': instance.errors,
    };
