// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataLoginResponse _$DataLoginResponseFromJson(Map<String, dynamic> json) {
  return _DataLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$DataLoginResponse {
  String? get token => throw _privateConstructorUsedError;
  List<String>? get roles => throw _privateConstructorUsedError;
  String? get tokenExpireTime => throw _privateConstructorUsedError;

  /// Serializes this DataLoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataLoginResponseCopyWith<DataLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataLoginResponseCopyWith<$Res> {
  factory $DataLoginResponseCopyWith(
          DataLoginResponse value, $Res Function(DataLoginResponse) then) =
      _$DataLoginResponseCopyWithImpl<$Res, DataLoginResponse>;
  @useResult
  $Res call({String? token, List<String>? roles, String? tokenExpireTime});
}

/// @nodoc
class _$DataLoginResponseCopyWithImpl<$Res, $Val extends DataLoginResponse>
    implements $DataLoginResponseCopyWith<$Res> {
  _$DataLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? roles = freezed,
    Object? tokenExpireTime = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tokenExpireTime: freezed == tokenExpireTime
          ? _value.tokenExpireTime
          : tokenExpireTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataLoginResponseImplCopyWith<$Res>
    implements $DataLoginResponseCopyWith<$Res> {
  factory _$$DataLoginResponseImplCopyWith(_$DataLoginResponseImpl value,
          $Res Function(_$DataLoginResponseImpl) then) =
      __$$DataLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, List<String>? roles, String? tokenExpireTime});
}

/// @nodoc
class __$$DataLoginResponseImplCopyWithImpl<$Res>
    extends _$DataLoginResponseCopyWithImpl<$Res, _$DataLoginResponseImpl>
    implements _$$DataLoginResponseImplCopyWith<$Res> {
  __$$DataLoginResponseImplCopyWithImpl(_$DataLoginResponseImpl _value,
      $Res Function(_$DataLoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? roles = freezed,
    Object? tokenExpireTime = freezed,
  }) {
    return _then(_$DataLoginResponseImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tokenExpireTime: freezed == tokenExpireTime
          ? _value.tokenExpireTime
          : tokenExpireTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataLoginResponseImpl implements _DataLoginResponse {
  _$DataLoginResponseImpl(
      {this.token, final List<String>? roles, this.tokenExpireTime})
      : _roles = roles;

  factory _$DataLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataLoginResponseImplFromJson(json);

  @override
  final String? token;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? tokenExpireTime;

  @override
  String toString() {
    return 'DataLoginResponse(token: $token, roles: $roles, tokenExpireTime: $tokenExpireTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataLoginResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.tokenExpireTime, tokenExpireTime) ||
                other.tokenExpireTime == tokenExpireTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token,
      const DeepCollectionEquality().hash(_roles), tokenExpireTime);

  /// Create a copy of DataLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataLoginResponseImplCopyWith<_$DataLoginResponseImpl> get copyWith =>
      __$$DataLoginResponseImplCopyWithImpl<_$DataLoginResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _DataLoginResponse implements DataLoginResponse {
  factory _DataLoginResponse(
      {final String? token,
      final List<String>? roles,
      final String? tokenExpireTime}) = _$DataLoginResponseImpl;

  factory _DataLoginResponse.fromJson(Map<String, dynamic> json) =
      _$DataLoginResponseImpl.fromJson;

  @override
  String? get token;
  @override
  List<String>? get roles;
  @override
  String? get tokenExpireTime;

  /// Create a copy of DataLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataLoginResponseImplCopyWith<_$DataLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
