// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseEntityImpl _$$ErrorResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorResponseEntityImpl(
      data: json['data'],
      pagingData: json['pagingData'] == null
          ? null
          : PagingData.fromJson(json['pagingData'] as Map<String, dynamic>),
      metaData: json['MetaData'] == null
          ? null
          : MetaDataRestApi.fromJson(json['MetaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ErrorResponseEntityImplToJson(
        _$ErrorResponseEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagingData': instance.pagingData,
      'MetaData': instance.metaData,
    };
