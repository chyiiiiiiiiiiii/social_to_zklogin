import 'dart:convert';

import 'package:social_to_zklogin/shinami/constants/shinami_urls.dart';
import 'package:social_to_zklogin/shinami/models/http/create_zk_login_proof_result.dart';
import 'package:social_to_zklogin/shinami/rpc_clients/shinami_rpc_client.dart';
import 'package:sui/cryptography/keypair.dart';

/// zkProver RPC client.
class ZkProverClient extends ShinamiRpcClient {
  /// @param accessKey Gas access key. Note that the access key also determines which network your
  ///    transactions are targeting.
  /// @param url Optional URL override.
  ZkProverClient(
    this.accessKey, {
    String url = ShinamiUrls.zkProverRpcUrl,
  }) : super(
          url,
          headers: {
            'X-API-Key': accessKey,
          },
        );

  final String accessKey;

  /// Creates a zkLogin proof for the given JWT.
  /// @param jwt A valid JWT signed by one of the supported OpenID providers.
  /// @param maxEpoch The max epoch used to prepare the JWT nonce.
  /// @param ephemeralPublicKey The ephemeral public key used to prepare the JWT nonce.
  /// @param jwtRandomness The random bytes used to prepare the JWT nonce.
  /// @param salt The zkLogin wallet salt.
  /// @param keyClaimName The claim name in the JWT that identifies a particular user.
  /// @returns The zkLogin proof for the given JWT.
  Future<CreateZkLoginProofResult> createZkLoginProof({
    required String jwt,
    required int maxEpoch,
    required PublicKey ephemeralPublicKey,
    required String jwtRandomness,
    required List<int> salt,
    required String? keyClaimName,
  }) async {
    final result = await client.request(
      'shinami_zkp_createZkLoginProof',
      [
        jwt,
        maxEpoch.toString(),
        ephemeralPublicKey.toSuiPublicKey(),
        jwtRandomness,
        base64Encode(salt),
        keyClaimName,
      ],
    ) as Map<String, dynamic>;

    return CreateZkLoginProofResult.fromJson(result);
  }
}
