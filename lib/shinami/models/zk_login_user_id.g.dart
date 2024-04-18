// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zk_login_user_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZkLoginUserIdImpl _$$ZkLoginUserIdImplFromJson(Map<String, dynamic> json) =>
    _$ZkLoginUserIdImpl(
      iss: json['iss'] as String? ?? 'iss',
      aud: json['aud'] as String? ?? 'aud',
      keyClaimName: json['keyClaimName'] as String? ?? 'keyClaimName',
      keyClaimValue: json['keyClaimValue'] as String? ?? 'keyClaimValue',
    );

Map<String, dynamic> _$$ZkLoginUserIdImplToJson(_$ZkLoginUserIdImpl instance) =>
    <String, dynamic>{
      'iss': instance.iss,
      'aud': instance.aud,
      'keyClaimName': instance.keyClaimName,
      'keyClaimValue': instance.keyClaimValue,
    };
