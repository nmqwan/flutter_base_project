import 'package:freezed_annotation/freezed_annotation.dart';

import 'meta_data_rest_api.dart';
import 'paging_data.dart';

part 'error_response_entity.freezed.dart';
part 'error_response_entity.g.dart';

@freezed
class ErrorResponseEntity with _$ErrorResponseEntity {
  factory ErrorResponseEntity({
    dynamic data,
    PagingData? pagingData,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'MetaData') MetaDataRestApi? metaData,
  }) = _ErrorResponseEntity;

  factory ErrorResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseEntityFromJson(json);
}
