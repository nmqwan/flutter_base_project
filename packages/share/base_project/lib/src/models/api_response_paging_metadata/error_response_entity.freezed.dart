// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorResponseEntity _$ErrorResponseEntityFromJson(Map<String, dynamic> json) {
  return _ErrorResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponseEntity {
  dynamic get data => throw _privateConstructorUsedError;
  PagingData? get pagingData =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'MetaData')
  MetaDataRestApi? get metaData => throw _privateConstructorUsedError;

  /// Serializes this ErrorResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorResponseEntityCopyWith<ErrorResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseEntityCopyWith<$Res> {
  factory $ErrorResponseEntityCopyWith(
          ErrorResponseEntity value, $Res Function(ErrorResponseEntity) then) =
      _$ErrorResponseEntityCopyWithImpl<$Res, ErrorResponseEntity>;
  @useResult
  $Res call(
      {dynamic data,
      PagingData? pagingData,
      @JsonKey(name: 'MetaData') MetaDataRestApi? metaData});

  $PagingDataCopyWith<$Res>? get pagingData;
  $MetaDataRestApiCopyWith<$Res>? get metaData;
}

/// @nodoc
class _$ErrorResponseEntityCopyWithImpl<$Res, $Val extends ErrorResponseEntity>
    implements $ErrorResponseEntityCopyWith<$Res> {
  _$ErrorResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagingData = freezed,
    Object? metaData = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pagingData: freezed == pagingData
          ? _value.pagingData
          : pagingData // ignore: cast_nullable_to_non_nullable
              as PagingData?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataRestApi?,
    ) as $Val);
  }

  /// Create a copy of ErrorResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PagingDataCopyWith<$Res>? get pagingData {
    if (_value.pagingData == null) {
      return null;
    }

    return $PagingDataCopyWith<$Res>(_value.pagingData!, (value) {
      return _then(_value.copyWith(pagingData: value) as $Val);
    });
  }

  /// Create a copy of ErrorResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaDataRestApiCopyWith<$Res>? get metaData {
    if (_value.metaData == null) {
      return null;
    }

    return $MetaDataRestApiCopyWith<$Res>(_value.metaData!, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ErrorResponseEntityImplCopyWith<$Res>
    implements $ErrorResponseEntityCopyWith<$Res> {
  factory _$$ErrorResponseEntityImplCopyWith(_$ErrorResponseEntityImpl value,
          $Res Function(_$ErrorResponseEntityImpl) then) =
      __$$ErrorResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic data,
      PagingData? pagingData,
      @JsonKey(name: 'MetaData') MetaDataRestApi? metaData});

  @override
  $PagingDataCopyWith<$Res>? get pagingData;
  @override
  $MetaDataRestApiCopyWith<$Res>? get metaData;
}

/// @nodoc
class __$$ErrorResponseEntityImplCopyWithImpl<$Res>
    extends _$ErrorResponseEntityCopyWithImpl<$Res, _$ErrorResponseEntityImpl>
    implements _$$ErrorResponseEntityImplCopyWith<$Res> {
  __$$ErrorResponseEntityImplCopyWithImpl(_$ErrorResponseEntityImpl _value,
      $Res Function(_$ErrorResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagingData = freezed,
    Object? metaData = freezed,
  }) {
    return _then(_$ErrorResponseEntityImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pagingData: freezed == pagingData
          ? _value.pagingData
          : pagingData // ignore: cast_nullable_to_non_nullable
              as PagingData?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataRestApi?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorResponseEntityImpl implements _ErrorResponseEntity {
  _$ErrorResponseEntityImpl(
      {this.data, this.pagingData, @JsonKey(name: 'MetaData') this.metaData});

  factory _$ErrorResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseEntityImplFromJson(json);

  @override
  final dynamic data;
  @override
  final PagingData? pagingData;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'MetaData')
  final MetaDataRestApi? metaData;

  @override
  String toString() {
    return 'ErrorResponseEntity(data: $data, pagingData: $pagingData, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseEntityImpl &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.pagingData, pagingData) ||
                other.pagingData == pagingData) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), pagingData, metaData);

  /// Create a copy of ErrorResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseEntityImplCopyWith<_$ErrorResponseEntityImpl> get copyWith =>
      __$$ErrorResponseEntityImplCopyWithImpl<_$ErrorResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _ErrorResponseEntity implements ErrorResponseEntity {
  factory _ErrorResponseEntity(
          {final dynamic data,
          final PagingData? pagingData,
          @JsonKey(name: 'MetaData') final MetaDataRestApi? metaData}) =
      _$ErrorResponseEntityImpl;

  factory _ErrorResponseEntity.fromJson(Map<String, dynamic> json) =
      _$ErrorResponseEntityImpl.fromJson;

  @override
  dynamic get data;
  @override
  PagingData? get pagingData; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'MetaData')
  MetaDataRestApi? get metaData;

  /// Create a copy of ErrorResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorResponseEntityImplCopyWith<_$ErrorResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
