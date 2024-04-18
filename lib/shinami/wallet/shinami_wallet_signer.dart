import 'dart:convert';
import 'dart:typed_data';

import 'package:social_to_zklogin/shinami/enums/execute_transaction_request_type.dart';
import 'package:social_to_zklogin/shinami/models/sign_transaction_result.dart';
import 'package:social_to_zklogin/shinami/rpc_clients/shinami_key_client.dart';
import 'package:social_to_zklogin/shinami/wallet/key_session.dart';
import 'package:sui/types/transactions.dart';
import 'package:sui/utils/error.dart';

class ShinamiWalletSigner {
  final String walletId;
  final WalletClient walletClient;
  late final KeySession session;

  String? address;

  ShinamiWalletSigner._(this.walletId, this.walletClient, this.session);

  factory ShinamiWalletSigner.withSession(
      String walletId, WalletClient walletClient, KeySession session) {
    return ShinamiWalletSigner._(walletId, walletClient, session);
  }

  factory ShinamiWalletSigner.withSecret(String walletId,
      WalletClient walletClient, String secret, KeyClient keyClient) {
    final session = KeySession(secret, keyClient);
    return ShinamiWalletSigner._(walletId, walletClient, session);
  }

  Future<String> getAddress({bool autoCreate = false}) async {
    address ??= await _getAddress(autoCreate);
    return address!;
  }

  Future<String> _getAddress(bool autoCreate) async {
    try {
      return await walletClient.getWallet(walletId: walletId);
    } catch (e) {
      // Error handling should be adapted based on your error types in Dart
      if (autoCreate && e is RPCError && e.code == -32602) {
        final address = await tryCreate();
        if (address != null) return address;
        return await walletClient.getWallet(walletId: walletId);
      }
      rethrow;
    }
  }

  Future<String?> tryCreate() async {
    try {
      return await session.withToken((token) => walletClient.createWallet(
            walletId: walletId,
            sessionToken: token,
          ));
    } catch (e) {
      // Error handling should be adapted based on your error types in Dart
      if (e is RPCError && e.code == -32602) {
        // Parse and check the error details
        return null;
      }
      rethrow;
    }
  }

  Future<SignTransactionResult> signTransactionBlock(dynamic txBytes) async {
    final txBytes0 = txBytes is Uint8List ? base64Encode(txBytes) : txBytes;
    return session.withToken((token) =>
        walletClient.signTransactionBlock(walletId, token, txBytes0));
  }

  Future<String> signPersonalMessage(dynamic message,
      [bool wrapBcs = true]) async {
    final message0 = message is Uint8List ? base64Encode(message) : message;
    return session.withToken((token) => walletClient.signPersonalMessage(
          walletId: walletId,
          sessionToken: token,
          message: message0,
          wrapBcs: wrapBcs,
        ));
  }

  Future<SuiTransactionBlockResponse> executeGaslessTransactionBlock(
    dynamic txBytes, [
    dynamic gasBudget,
    SuiTransactionBlockResponseOptions? options,
    ExecuteTransactionRequestType? requestType,
  ]) async {
    final txBytes0 = txBytes is Uint8List ? base64Encode(txBytes) : txBytes;
    return session
        .withToken((token) => walletClient.executeGaslessTransactionBlock(
              walletId,
              token,
              txBytes0,
              gasBudget: gasBudget,
              options: options,
              requestType: requestType,
            ));
  }

  Future<String> setBeneficiary(
      String beneficiaryGraphId, String beneficiaryAddress) async {
    return session.withToken((token) => walletClient.setBeneficiary(
          walletId: token,
          sessionToken: token,
          beneficiaryGraphId: beneficiaryGraphId,
          beneficiaryAddress: beneficiaryAddress,
        ));
  }

  Future<String> unsetBeneficiary(String beneficiaryGraphId) async {
    return session.withToken((token) => walletClient.unsetBeneficiary(
          walletId: walletId,
          sessionToken: token,
          beneficiaryGraphId: beneficiaryGraphId,
        ));
  }

  Future<String?> getBeneficiary(String beneficiaryGraphId) async {
    return walletClient.getBeneficiary(
        walletId: walletId, beneficiaryGraphId: beneficiaryGraphId);
  }
}
