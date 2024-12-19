// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataLoginResponseImpl _$$DataLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DataLoginResponseImpl(
      token: json['token'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      tokenExpireTime: json['tokenExpireTime'] as String?,
    );

Map<String, dynamic> _$$DataLoginResponseImplToJson(
        _$DataLoginResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'roles': instance.roles,
      'tokenExpireTime': instance.tokenExpireTime,
    };
