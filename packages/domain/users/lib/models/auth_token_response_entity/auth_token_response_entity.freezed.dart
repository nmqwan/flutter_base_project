// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_token_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthTokenResponseEntity _$AuthTokenResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _AuthTokenResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthTokenResponseEntity {
  DataLoginResponse? get data => throw _privateConstructorUsedError;
  PagingData? get pagingData =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'MetaData')
  MetaDataRestApi? get metaData => throw _privateConstructorUsedError;

  /// Serializes this AuthTokenResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthTokenResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthTokenResponseEntityCopyWith<AuthTokenResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenResponseEntityCopyWith<$Res> {
  factory $AuthTokenResponseEntityCopyWith(AuthTokenResponseEntity value,
          $Res Function(AuthTokenResponseEntity) then) =
      _$AuthTokenResponseEntityCopyWithImpl<$Res, AuthTokenResponseEntity>;
  @useResult
  $Res call(
      {DataLoginResponse? data,
      PagingData? pagingData,
      @JsonKey(name: 'MetaData') MetaDataRestApi? metaData});

  $DataLoginResponseCopyWith<$Res>? get data;
  $PagingDataCopyWith<$Res>? get pagingData;
  $MetaDataRestApiCopyWith<$Res>? get metaData;
}

/// @nodoc
class _$AuthTokenResponseEntityCopyWithImpl<$Res,
        $Val extends AuthTokenResponseEntity>
    implements $AuthTokenResponseEntityCopyWith<$Res> {
  _$AuthTokenResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthTokenResponseEntity
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
              as DataLoginResponse?,
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

  /// Create a copy of AuthTokenResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataLoginResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataLoginResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  /// Create a copy of AuthTokenResponseEntity
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

  /// Create a copy of AuthTokenResponseEntity
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
abstract class _$$AuthTokenResponseEntityImplCopyWith<$Res>
    implements $AuthTokenResponseEntityCopyWith<$Res> {
  factory _$$AuthTokenResponseEntityImplCopyWith(
          _$AuthTokenResponseEntityImpl value,
          $Res Function(_$AuthTokenResponseEntityImpl) then) =
      __$$AuthTokenResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataLoginResponse? data,
      PagingData? pagingData,
      @JsonKey(name: 'MetaData') MetaDataRestApi? metaData});

  @override
  $DataLoginResponseCopyWith<$Res>? get data;
  @override
  $PagingDataCopyWith<$Res>? get pagingData;
  @override
  $MetaDataRestApiCopyWith<$Res>? get metaData;
}

/// @nodoc
class __$$AuthTokenResponseEntityImplCopyWithImpl<$Res>
    extends _$AuthTokenResponseEntityCopyWithImpl<$Res,
        _$AuthTokenResponseEntityImpl>
    implements _$$AuthTokenResponseEntityImplCopyWith<$Res> {
  __$$AuthTokenResponseEntityImplCopyWithImpl(
      _$AuthTokenResponseEntityImpl _value,
      $Res Function(_$AuthTokenResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthTokenResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagingData = freezed,
    Object? metaData = freezed,
  }) {
    return _then(_$AuthTokenResponseEntityImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataLoginResponse?,
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
class _$AuthTokenResponseEntityImpl implements _AuthTokenResponseEntity {
  _$AuthTokenResponseEntityImpl(
      {this.data, this.pagingData, @JsonKey(name: 'MetaData') this.metaData});

  factory _$AuthTokenResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokenResponseEntityImplFromJson(json);

  @override
  final DataLoginResponse? data;
  @override
  final PagingData? pagingData;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'MetaData')
  final MetaDataRestApi? metaData;

  @override
  String toString() {
    return 'AuthTokenResponseEntity(data: $data, pagingData: $pagingData, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthTokenResponseEntityImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.pagingData, pagingData) ||
                other.pagingData == pagingData) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, pagingData, metaData);

  /// Create a copy of AuthTokenResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokenResponseEntityImplCopyWith<_$AuthTokenResponseEntityImpl>
      get copyWith => __$$AuthTokenResponseEntityImplCopyWithImpl<
          _$AuthTokenResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokenResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _AuthTokenResponseEntity implements AuthTokenResponseEntity {
  factory _AuthTokenResponseEntity(
          {final DataLoginResponse? data,
          final PagingData? pagingData,
          @JsonKey(name: 'MetaData') final MetaDataRestApi? metaData}) =
      _$AuthTokenResponseEntityImpl;

  factory _AuthTokenResponseEntity.fromJson(Map<String, dynamic> json) =
      _$AuthTokenResponseEntityImpl.fromJson;

  @override
  DataLoginResponse? get data;
  @override
  PagingData? get pagingData; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'MetaData')
  MetaDataRestApi? get metaData;

  /// Create a copy of AuthTokenResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthTokenResponseEntityImplCopyWith<_$AuthTokenResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
