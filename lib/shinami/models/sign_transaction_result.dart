import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_transaction_result.freezed.dart';
part 'sign_transaction_result.g.dart';

@freezed
class SignTransactionResult with _$SignTransactionResult {
  factory SignTransactionResult({
    required String signature,
    required String txDigest,
  }) = _SignTransactionResult;

  factory SignTransactionResult.fromJson(Map<String, dynamic> json) =>
      _$SignTransactionResultFromJson(json);
}
