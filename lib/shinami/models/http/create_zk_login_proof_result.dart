import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_to_zklogin/shinami/models/zk_login_proof.dart';

part 'create_zk_login_proof_result.freezed.dart';
part 'create_zk_login_proof_result.g.dart';

@freezed
class CreateZkLoginProofResult with _$CreateZkLoginProofResult {
  factory CreateZkLoginProofResult({
    ZkLoginProof? zkProof,
  }) = _CreateZkLoginProofResult;

  factory CreateZkLoginProofResult.fromJson(Map<String, dynamic> json) =>
      _$CreateZkLoginProofResultFromJson(json);
}
