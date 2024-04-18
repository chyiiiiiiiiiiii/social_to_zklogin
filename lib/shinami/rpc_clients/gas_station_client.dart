import 'dart:convert';

import 'package:social_to_zklogin/shinami/enums/sponsored_transaction_status.dart';
import 'package:social_to_zklogin/shinami/models/sponsored_transaction.dart';
import 'package:social_to_zklogin/shinami/rpc_clients/shinami_rpc_client.dart';
import 'package:sui/builder/transaction_block.dart';
import 'package:sui/sui_client.dart';

const gasStationRpcUrl = 'https://api.shinami.com/gas/v1';

/// Gas station RPC client.
class GasStationClient extends ShinamiRpcClient {
  /// @param accessKey Gas access key. Note that the access key also determines which network your
  ///    transactions are targeting.
  /// @param url Optional URL override.
  GasStationClient(
    this.accessKey, {
    String url = gasStationRpcUrl,
  }) : super(
          url,
          headers: {
            'X-API-Key': accessKey,
          },
        );

  final String accessKey;

  /// Requests sponsorship for a gasless transaction block.
  ///
  /// [txBytes] Base64 encoded gasless transaction bytes. These are the BCS bytes of a
  /// `TransactionKind` as opposed to `TransactionData`.
  /// [sender] Transaction sender address.
  /// [gasBudget] Gas budget. If omitted, it will be estimated from the transaction.
  /// Returns a fully sponsored transaction block.
  Future<SponsoredTransaction> sponsorTransactionBlock(
    String txBytes,
    String sender, {
    int? gasBudget,
  }) async {
    final result = await client.request(
      'gas_sponsorTransactionBlock',
      [txBytes, sender, gasBudget],
    ) as Map<String, dynamic>;

    return SponsoredTransaction.fromJson(result);
  }

  /// Queries the status of a sponsored transaction block.
  ///
  /// [txDigest] Sponsored transaction digest.
  /// Returns Sponsored transaction status.
  Future<SponsoredTransactionStatus> getSponsoredTransactionBlockStatus({
    required String txDigest,
  }) async {
    final result = await client.request(
          'gas_getSponsoredTransactionBlockStatus',
          [txDigest],
        ) as String? ??
        '';

    return SponsoredTransactionStatus.fromString(result);
  }
}

/// Builds a gasless transaction.
///
/// @param sui Sui JSON RPC provider.
/// @param txb Optional base `TransactionBlock`. An empty one will be used if not specified.
/// @param build Optional builder function to further populate the base `TransactionBlock`.
/// @returns Base64 encoded gasless transaction bytes that can be passed to `sponsorTransactionBlock` request.
Future<String> buildGaslessTransactionBytes({
  required SuiClient suiClient,
  required Future<TransactionResult> Function(
    TransactionBlock transactionBlock,
  )? build,
  TransactionBlock? transactionBlock,
}) async {
  final block = transactionBlock ?? TransactionBlock();
  if (build != null) {
    await build(block);
  }

  final bcsBytes = await block.build(
    BuildOptions(
      client: suiClient,
      onlyTransactionKind: true,
    ),
  );
  final result = base64Encode(bcsBytes);

  return result;
}
