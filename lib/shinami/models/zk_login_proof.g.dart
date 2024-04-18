// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zk_login_proof.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZkLoginProofImpl _$$ZkLoginProofImplFromJson(Map<String, dynamic> json) =>
    _$ZkLoginProofImpl(
      proofPoints: json['proofPoints'] == null
          ? null
          : ProofPoints.fromJson(json['proofPoints'] as Map<String, dynamic>),
      issBase64Details: json['issBase64Details'] == null
          ? null
          : Claim.fromJson(json['issBase64Details'] as Map<String, dynamic>),
      headerBase64: json['headerBase64'] as String? ?? '',
    );

Map<String, dynamic> _$$ZkLoginProofImplToJson(_$ZkLoginProofImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('proofPoints', instance.proofPoints?.toJson());
  writeNotNull('issBase64Details', instance.issBase64Details?.toJson());
  val['headerBase64'] = instance.headerBase64;
  return val;
}
