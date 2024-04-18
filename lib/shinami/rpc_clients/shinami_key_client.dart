// Shinami Key RPC client.
import 'package:social_to_zklogin/shinami/constants/shinami_urls.dart';
import 'package:social_to_zklogin/shinami/enums/execute_transaction_request_type.dart';
import 'package:social_to_zklogin/shinami/helpers/shinami_helper.dart';
import 'package:social_to_zklogin/shinami/models/sign_transaction_result.dart';
import 'package:social_to_zklogin/shinami/rpc_clients/shinami_rpc_client.dart';
import 'package:sui/types/transactions.dart';

class KeyClient extends ShinamiRpcClient {
  // Constructor with accessKey and optional url.
  KeyClient(
    this.accessKey, {
    this.url = ShinamiUrls.shinamiKeyRpcUrl,
  }) : super(
          url,
          headers: {
            'X-API-Key': accessKey,
          },
        );

  final String accessKey;
  final String url;

  // Creates a session with the provided wallet secret.
  Future<String> createSession({required String secret}) async {
    final result = await client.request(
      'shinami_key_createSession',
      [secret],
    ) as String;

    return result;
  }
}

// Shinami Wallet RPC client.
class WalletClient extends ShinamiRpcClient {
  // Constructor with accessKey and optional url.
  WalletClient(this.accessKey, {this.url = ShinamiUrls.invisibleWalletRpcUrl})
      : super(
          url,
          headers: {
            'X-API-Key': accessKey,
          },
        );

  final String accessKey;
  final String url;

  // Creates a new wallet.
  Future<String> createWallet({
    required String walletId,
    required String sessionToken,
  }) async {
    final result = await client.request(
      'shinami_wal_createWallet',
      [walletId, sessionToken],
    ) as String;

    return result;
  }

  // Retrieves the wallet address.
  Future<String> getWallet({required String walletId}) async {
    return await client.request(
      'shinami_wal_getWallet',
      [walletId],
    ) as String;
  }

  // Signs a transaction block with the specified wallet.
  Future<SignTransactionResult> signTransactionBlock(
      String walletId, String sessionToken, String txBytes) async {
    final result = await client.request(
      'shinami_wal_signTransactionBlock',
      [walletId, sessionToken, txBytes],
    ) as Map<String, dynamic>;

    return SignTransactionResult.fromJson(result);
  }

  // Signs a personal message with the specified wallet.
  Future<String> signPersonalMessage({
    required String walletId,
    required String sessionToken,
    required String message,
    bool wrapBcs = true,
  }) async {
    return client.request(
      'shinami_wal_signPersonalMessage',
      [walletId, sessionToken, message, wrapBcs],
    ) as String;
  }

  // Sponsors, signs, and executes a gasless transaction block.
  Future<SuiTransactionBlockResponse> executeGaslessTransactionBlock(
    String walletId,
    String sessionToken,
    String txBytes, {
    String? gasBudget,
    SuiTransactionBlockResponseOptions? options,
    ExecuteTransactionRequestType? requestType,
  }) async {
    final result = await client.request(
      'shinami_wal_executeGaslessTransactionBlock',
      trimTrailingParams(
        [
          walletId,
          sessionToken,
          txBytes,
          gasBudget,
          options?.toJson(),
          requestType?.name,
        ],
      ),
    ) as Map<String, dynamic>;

    return SuiTransactionBlockResponse.fromJson(result);
  }

  // Beneficiary Graph API - Designates a beneficiary for the wallet.
  Future<String> setBeneficiary({
    required String walletId,
    required String sessionToken,
    required String beneficiaryGraphId,
    required String beneficiaryAddress,
  }) async {
    return client.request(
      'shinami_walx_setBeneficiary',
      [walletId, sessionToken, beneficiaryGraphId, beneficiaryAddress],
    ) as String;
  }

  // Beneficiary Graph API - Clears beneficiary designation.
  Future<String> unsetBeneficiary({
    required String walletId,
    required String sessionToken,
    required String beneficiaryGraphId,
  }) async {
    return client.request(
      'shinami_walx_unsetBeneficiary',
      [walletId, sessionToken, beneficiaryGraphId],
    ) as String;
  }

  // Beneficiary Graph API - Gets the beneficiary designation.
  Future<String?> getBeneficiary({
    required String walletId,
    required String beneficiaryGraphId,
  }) async {
    return client.request(
      'shinami_walx_getBeneficiary',
      [walletId, beneficiaryGraphId],
    ) as String?;
  }
}
