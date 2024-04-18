// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zk_login_wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZkLoginWalletImpl _$$ZkLoginWalletImplFromJson(Map<String, dynamic> json) =>
    _$ZkLoginWalletImpl(
      userId: json['userId'] == null
          ? null
          : ZkLoginUserId.fromJson(json['userId'] as Map<String, dynamic>),
      subWallet: json['subWallet'] as int? ?? 0,
      salt: json['salt'] as String? ?? '',
      address: json['address'] as String? ?? '',
    );

Map<String, dynamic> _$$ZkLoginWalletImplToJson(_$ZkLoginWalletImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId?.toJson());
  val['subWallet'] = instance.subWallet;
  val['salt'] = instance.salt;
  val['address'] = instance.address;
  return val;
}
