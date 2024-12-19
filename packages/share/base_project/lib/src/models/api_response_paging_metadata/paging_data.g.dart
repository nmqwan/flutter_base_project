// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PagingDataImpl _$$PagingDataImplFromJson(Map<String, dynamic> json) =>
    _$PagingDataImpl(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      pageCount: (json['pageCount'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      rowCount: (json['rowCount'] as num?)?.toInt(),
      firstRowOnPage: (json['firstRowOnPage'] as num?)?.toInt(),
      lastRowOnPage: (json['lastRowOnPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PagingDataImplToJson(_$PagingDataImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'pageCount': instance.pageCount,
      'pageSize': instance.pageSize,
      'rowCount': instance.rowCount,
      'firstRowOnPage': instance.firstRowOnPage,
      'lastRowOnPage': instance.lastRowOnPage,
    };
