import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:social_to_zklogin/shinami/constants/shinami_urls.dart';
import 'package:social_to_zklogin/shinami/rpc_clients/gas_station_client.dart';
import 'package:sui/builder/transaction_block.dart';
import 'package:sui/sui_account.dart';
import 'package:sui/sui_client.dart';
import 'package:sui/types/transactions.dart';

final class ShinamiGasStation {
  ShinamiGasStation({
    required this.shinamiAccessKey,
  });

  final String shinamiAccessKey;

  late final gasStationSuiNodeClientEndPoint =
      '${ShinamiUrls.shinamiNodeRpcUrl}/$shinamiAccessKey';

  late final gasStationSuiNodeClient =
      SuiClient(gasStationSuiNodeClientEndPoint);
  late final gasStationClient = GasStationClient(shinamiAccessKey);

  Future<SuiTransactionBlockResponse> executeTransaction({
    required SuiAccount senderAccount,
    required Future<TransactionResult> Function(
      TransactionBlock transactionBlock,
    )? prefixTransaction,
  }) async {
    final senderAddress = senderAccount.getAddress();

    final gaslessPayloadBase64 = await buildGaslessTransactionBytes(
      suiClient: gasStationSuiNodeClient,
      build: prefixTransaction,
    );

    final sponsoredResponse = await gasStationClient.sponsorTransactionBlock(
      gaslessPayloadBase64,
      senderAddress,
    );

    final sponsoredStatus =
        await gasStationClient.getSponsoredTransactionBlockStatus(
      txDigest: sponsoredResponse.transactionDigest,
    );

    debugPrint('Transaction Digest:${sponsoredResponse.transactionDigest}');
    debugPrint('Sponsorship Status:$sponsoredStatus');


    final txSignatures = sponsoredResponse.txSignatures;
    final txSignaturesBytes = base64Decode(txSignatures);
    final senderSignature = await TransactionBlock.fromBytes(txSignaturesBytes)
        .sign(SignOptions(senderAccount.keyPair));

    final executeResponse =
        await gasStationSuiNodeClient.executeTransactionBlock(
      sponsoredResponse.txSignatures,
      [
        senderSignature.signature,
        sponsoredResponse.gasOwnerSignature,
      ],
      options: SuiTransactionBlockResponseOptions(showEffects: true),
      requestType: ExecuteTransaction.WaitForLocalExecution,
    );

    debugPrint('Transaction Digest:${executeResponse.digest}');
    debugPrint('Execution Status:${executeResponse.effects?.status.status}');

    return executeResponse;
  }
}
