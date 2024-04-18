import 'package:flutter/foundation.dart';

@immutable
final class ShinamiUrls {
  const ShinamiUrls._();

  static const String shinamiNodeRpcUrl = 'https://api.shinami.com/node/v1';
  static const String shinamiKeyRpcUrl = 'https://api.shinami.com/key/v1';
  static const String invisibleWalletRpcUrl =
      'https://api.shinami.com/wallet/v1';
  static const String zkWalletRpcUrl = 'https://api.shinami.com/zkwallet/v1';
  static const String zkProverRpcUrl = 'https://api.shinami.com/zkprover/v1';
}
