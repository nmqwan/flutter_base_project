// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthTokenResponseEntityImpl _$$AuthTokenResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthTokenResponseEntityImpl(
      data: json['data'] == null
          ? null
          : DataLoginResponse.fromJson(json['data'] as Map<String, dynamic>),
      pagingData: json['pagingData'] == null
          ? null
          : PagingData.fromJson(json['pagingData'] as Map<String, dynamic>),
      metaData: json['MetaData'] == null
          ? null
          : MetaDataRestApi.fromJson(json['MetaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthTokenResponseEntityImplToJson(
        _$AuthTokenResponseEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagingData': instance.pagingData,
      'MetaData': instance.metaData,
    };
