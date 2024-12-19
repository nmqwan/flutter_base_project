// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paging_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PagingData _$PagingDataFromJson(Map<String, dynamic> json) {
  return _PagingData.fromJson(json);
}

/// @nodoc
mixin _$PagingData {
  int? get currentPage => throw _privateConstructorUsedError;
  int? get pageCount => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get rowCount => throw _privateConstructorUsedError;
  int? get firstRowOnPage => throw _privateConstructorUsedError;
  int? get lastRowOnPage => throw _privateConstructorUsedError;

  /// Serializes this PagingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PagingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PagingDataCopyWith<PagingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingDataCopyWith<$Res> {
  factory $PagingDataCopyWith(
          PagingData value, $Res Function(PagingData) then) =
      _$PagingDataCopyWithImpl<$Res, PagingData>;
  @useResult
  $Res call(
      {int? currentPage,
      int? pageCount,
      int? pageSize,
      int? rowCount,
      int? firstRowOnPage,
      int? lastRowOnPage});
}

/// @nodoc
class _$PagingDataCopyWithImpl<$Res, $Val extends PagingData>
    implements $PagingDataCopyWith<$Res> {
  _$PagingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PagingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? pageCount = freezed,
    Object? pageSize = freezed,
    Object? rowCount = freezed,
    Object? firstRowOnPage = freezed,
    Object? lastRowOnPage = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      rowCount: freezed == rowCount
          ? _value.rowCount
          : rowCount // ignore: cast_nullable_to_non_nullable
              as int?,
      firstRowOnPage: freezed == firstRowOnPage
          ? _value.firstRowOnPage
          : firstRowOnPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastRowOnPage: freezed == lastRowOnPage
          ? _value.lastRowOnPage
          : lastRowOnPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagingDataImplCopyWith<$Res>
    implements $PagingDataCopyWith<$Res> {
  factory _$$PagingDataImplCopyWith(
          _$PagingDataImpl value, $Res Function(_$PagingDataImpl) then) =
      __$$PagingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? currentPage,
      int? pageCount,
      int? pageSize,
      int? rowCount,
      int? firstRowOnPage,
      int? lastRowOnPage});
}

/// @nodoc
class __$$PagingDataImplCopyWithImpl<$Res>
    extends _$PagingDataCopyWithImpl<$Res, _$PagingDataImpl>
    implements _$$PagingDataImplCopyWith<$Res> {
  __$$PagingDataImplCopyWithImpl(
      _$PagingDataImpl _value, $Res Function(_$PagingDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PagingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? pageCount = freezed,
    Object? pageSize = freezed,
    Object? rowCount = freezed,
    Object? firstRowOnPage = freezed,
    Object? lastRowOnPage = freezed,
  }) {
    return _then(_$PagingDataImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      rowCount: freezed == rowCount
          ? _value.rowCount
          : rowCount // ignore: cast_nullable_to_non_nullable
              as int?,
      firstRowOnPage: freezed == firstRowOnPage
          ? _value.firstRowOnPage
          : firstRowOnPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastRowOnPage: freezed == lastRowOnPage
          ? _value.lastRowOnPage
          : lastRowOnPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagingDataImpl implements _PagingData {
  _$PagingDataImpl(
      {this.currentPage,
      this.pageCount,
      this.pageSize,
      this.rowCount,
      this.firstRowOnPage,
      this.lastRowOnPage});

  factory _$PagingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagingDataImplFromJson(json);

  @override
  final int? currentPage;
  @override
  final int? pageCount;
  @override
  final int? pageSize;
  @override
  final int? rowCount;
  @override
  final int? firstRowOnPage;
  @override
  final int? lastRowOnPage;

  @override
  String toString() {
    return 'PagingData(currentPage: $currentPage, pageCount: $pageCount, pageSize: $pageSize, rowCount: $rowCount, firstRowOnPage: $firstRowOnPage, lastRowOnPage: $lastRowOnPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagingDataImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.rowCount, rowCount) ||
                other.rowCount == rowCount) &&
            (identical(other.firstRowOnPage, firstRowOnPage) ||
                other.firstRowOnPage == firstRowOnPage) &&
            (identical(other.lastRowOnPage, lastRowOnPage) ||
                other.lastRowOnPage == lastRowOnPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, pageCount, pageSize,
      rowCount, firstRowOnPage, lastRowOnPage);

  /// Create a copy of PagingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PagingDataImplCopyWith<_$PagingDataImpl> get copyWith =>
      __$$PagingDataImplCopyWithImpl<_$PagingDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagingDataImplToJson(
      this,
    );
  }
}

abstract class _PagingData implements PagingData {
  factory _PagingData(
      {final int? currentPage,
      final int? pageCount,
      final int? pageSize,
      final int? rowCount,
      final int? firstRowOnPage,
      final int? lastRowOnPage}) = _$PagingDataImpl;

  factory _PagingData.fromJson(Map<String, dynamic> json) =
      _$PagingDataImpl.fromJson;

  @override
  int? get currentPage;
  @override
  int? get pageCount;
  @override
  int? get pageSize;
  @override
  int? get rowCount;
  @override
  int? get firstRowOnPage;
  @override
  int? get lastRowOnPage;

  /// Create a copy of PagingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PagingDataImplCopyWith<_$PagingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
