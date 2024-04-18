// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_transaction_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignTransactionResultImpl _$$SignTransactionResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SignTransactionResultImpl(
      signature: json['signature'] as String,
      txDigest: json['txDigest'] as String,
    );

Map<String, dynamic> _$$SignTransactionResultImplToJson(
        _$SignTransactionResultImpl instance) =>
    <String, dynamic>{
      'signature': instance.signature,
      'txDigest': instance.txDigest,
    };
