import 'package:freezed_annotation/freezed_annotation.dart';

part 'paging_data.freezed.dart';
part 'paging_data.g.dart';

@freezed
class PagingData with _$PagingData {
  factory PagingData({
    int? currentPage,
    int? pageCount,
    int? pageSize,
    int? rowCount,
    int? firstRowOnPage,
    int? lastRowOnPage,
  }) = _PagingData;

  factory PagingData.fromJson(Map<String, dynamic> json) =>
      _$PagingDataFromJson(json);
}
