// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_jwt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoogleJwtModelImpl _$$GoogleJwtModelImplFromJson(Map<String, dynamic> json) =>
    _$GoogleJwtModelImpl(
      iss: json['iss'] as String? ?? '',
      azp: json['azp'] as String? ?? '',
      aud: json['aud'] as String? ?? '',
      sub: json['sub'] as String? ?? '',
      nonce: json['nonce'] as String? ?? '',
      nbf: json['nbf'] as int? ?? 0,
      iat: json['iat'] as int? ?? 0,
      exp: json['exp'] as int? ?? 0,
      jti: json['jti'] as String? ?? '',
    );

Map<String, dynamic> _$$GoogleJwtModelImplToJson(
        _$GoogleJwtModelImpl instance) =>
    <String, dynamic>{
      'iss': instance.iss,
      'azp': instance.azp,
      'aud': instance.aud,
      'sub': instance.sub,
      'nonce': instance.nonce,
      'nbf': instance.nbf,
      'iat': instance.iat,
      'exp': instance.exp,
      'jti': instance.jti,
    };
