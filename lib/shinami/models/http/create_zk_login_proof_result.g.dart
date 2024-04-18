// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_zk_login_proof_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateZkLoginProofResultImpl _$$CreateZkLoginProofResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateZkLoginProofResultImpl(
      zkProof: json['zkProof'] == null
          ? null
          : ZkLoginProof.fromJson(json['zkProof'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateZkLoginProofResultImplToJson(
    _$CreateZkLoginProofResultImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('zkProof', instance.zkProof?.toJson());
  return val;
}
