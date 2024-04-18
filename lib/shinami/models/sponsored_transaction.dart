import 'package:social_to_zklogin/shinami/models/sponsored_cost.dart';
import 'package:sui/types/common.dart';

class SponsoredTransaction {
  SponsoredTransaction({
    required this.txSignatures,
    required this.transactionDigest,
    required this.gasOwnerSignature,
    required this.sponsoredCost,
    this.expireAtTime,
    this.expireAfterEpoch,
  });

  factory SponsoredTransaction.fromJson(Map<String, dynamic> json) {
    return SponsoredTransaction(
      txSignatures: json['txBytes'] as String,
      transactionDigest: json['txDigest'] as String,
      gasOwnerSignature: json['signature'] as String,
      sponsoredCost: json['sponsorCost'] != null
          ? SponsoredCost.fromJson(json['sponsorCost'] as Map<String, dynamic>)
          : null,
      expireAtTime: json['expireAtTime'] as int?,
      expireAfterEpoch: json['expireAfterEpoch'] as String?,
    );
  }

  /// Base64 encoded transaction bytes, including sponsor gas data.
  String txSignatures;

  /// Transaction digest. Can be used to identify this sponsored transaction.
  TransactionDigest transactionDigest;

  /// Gas owner's signature.
  String gasOwnerSignature;

  /// Cost breakdown for the sponsor.
  SponsoredCost? sponsoredCost;

  int? expireAtTime;
  String? expireAfterEpoch;
}
