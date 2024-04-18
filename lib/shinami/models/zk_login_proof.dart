import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_to_zklogin/shinami/models/iss_base64_details.dart';
import 'package:sui/zklogin/types.dart';

part 'zk_login_proof.freezed.dart';
part 'zk_login_proof.g.dart';

@freezed
class ZkLoginProof with _$ZkLoginProof {
  factory ZkLoginProof({
    ProofPoints? proofPoints,
    Claim? issBase64Details,
    @Default('') String headerBase64,
  }) = _ZkLoginProof;

  factory ZkLoginProof.fromJson(Map<String, dynamic> json) =>
      _$ZkLoginProofFromJson(json);
}

// @freezed
// class ZkLoginProofPoints with _$ZkLoginProofPoints {
//   factory ZkLoginProofPoints({
//     @Default([]) List<String> a,
//     @Default([]) List<List<String>> b,
//     @Default([]) List<String> c,
//   }) = _ZkLoginProofPoints;

//   factory ZkLoginProofPoints.fromJson(Map<String, dynamic> json) =>
//       _$ZkLoginProofPointsFromJson(json);
// }
