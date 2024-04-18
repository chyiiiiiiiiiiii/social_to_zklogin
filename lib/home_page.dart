import 'dart:convert';
import 'dart:html' as html;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:social_to_zklogin/app.dart';
import 'package:social_to_zklogin/google_jwt_model.dart';
import 'package:social_to_zklogin/shinami/models/http/create_zk_login_proof_result.dart';
import 'package:social_to_zklogin/shinami/models/zk_login_wallet.dart';
import 'package:social_to_zklogin/shinami/rpc_clients/gas_station_client.dart';
import 'package:social_to_zklogin/shinami/rpc_clients/shinami_key_client.dart';
import 'package:social_to_zklogin/shinami/rpc_clients/zk_prover_client.dart';
import 'package:social_to_zklogin/shinami/rpc_clients/zk_wallet_client.dart';
import 'package:sui/sui.dart';
import 'package:zklogin/nonce.dart';
import 'package:zklogin/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final suiClient = SuiClient(SuiUrls.devnet);
  final nodeClient =
      SuiClient('https://api.shinami.com/node/v1/$shinamiAccessKey');
  final keyClient = KeyClient(shinamiAccessKey);
  final walletClient = WalletClient(shinamiAccessKey);

  final zkWalletClient = ZkWalletClient(shinamiAccessKey);
  final zkProverClient = ZkProverClient(shinamiAccessKey);

  final gasStationClient = GasStationClient(shinamiAccessKey);

  /// Test
  final movePackageAddress =
      '0xfa0e78030bd16672174c2d6cc4cd5d1d1423d03c28a74909b2a148eda8bcca16';
  final movePackageModule = 'clock';
  final movePackageMethod = 'access';

  /// Dev
  final moveDevPackageAddress =
      '0xf77b20e7ea8486e8a66b1166db7eb3140c9e7da40793f731beeacfb797ccfc60';
  final moveDevPackageModule = 'math';
  final moveDevPackageMethod = 'add';

  html.WindowBase? _popupWin;

  int accountAliveEpoch = 0;
  Ed25519Keypair? accountEphemeralKeyPair;
  BigInt accountRandomness = BigInt.zero;
  String accountNonce = '';

  String oauthIdToken = '';

  @override
  void initState() {
    super.initState();

    /// Listen to message send with `postMessage`.
    html.window.onMessage.listen(onWebMessageReceived);
  }

  Future<void> onWebMessageReceived(html.MessageEvent event) async {
    final hasIdToken = event.data.toString().contains('id_token=');
    if (!hasIdToken) {
      return;
    }

    debugPrint("${event.data}");

    final token = getJwtToken(event.data);
    final wallet = await getOrCreateZkLoginWallet(oauthIdToken: token);
    final proof = await createZkLoginProof(zkLoginWallet: wallet);

    final gaslessPayloadBase64 = await buildGaslessTransactionBytes(
      suiClient: nodeClient,
      build: (TransactionBlock transactionBlock) async {
        return transactionBlock.moveCall(
          '$moveDevPackageAddress::$moveDevPackageModule::$moveDevPackageMethod',
          arguments: [
            transactionBlock.pure(1),
            transactionBlock.pure(2),
          ],
        );
      },
    );

    final proofPoints = proof.zkProof?.proofPoints;
    final issBase64Details = proof.zkProof?.issBase64Details;
    final headerBase64 = proof.zkProof?.headerBase64;
    if (proofPoints == null ||
        issBase64Details == null ||
        headerBase64 == null) {
      throw Exception('Proof points, issBase64Details or headerBase64 is null');
    }

    final userData = wallet.userId;
    final userSalt = wallet.salt;
    final userSaltBigInt = BigInt.parse(userSalt);

    final claimName = userData?.keyClaimName ?? '';
    final keyClaimValue = userData?.keyClaimValue ?? '';
    final aud = userData?.aud ?? '';

    final addressSeed =
        genAddressSeed(userSaltBigInt, claimName, keyClaimValue, aud);

    final keyPair = accountEphemeralKeyPair;
    if (keyPair == null) {
      return;
    }
    final signatureData = await TransactionBlock().sign(SignOptions(keyPair));
    final signature = base64Decode(signatureData.signature);

    /// Do sponsor transaction
    // final sponsoredResponse =
    //     await gasStationClient.sponsorTransactionBlock(
    //   gaslessPayloadBase64,
    //   senderAddress,
    // );

    final zkLoginSignature = ZkLoginSignature(
      inputs: ZkLoginSignatureInputs(
        proofPoints: proofPoints,
        issBase64Details: issBase64Details,
        headerBase64: headerBase64,
        addressSeed: addressSeed.toString(),
      ),
      maxEpoch: accountAliveEpoch,
      userSignature: signature,
    );
    final zkLoginSignatureString = getZkLoginSignature(zkLoginSignature);

    debugPrint('ZkLoginSignature: $zkLoginSignatureString');

    // final signer = ShinamiWalletSigner.withSecret(
    //   '1',
    //   walletClient,
    //   token,
    //   keyClient,
    // );

    // final sponsorSignAndExecuteResponse =
    //     await signer.executeGaslessTransactionBlock(
    //   gaslessPayloadBase64,
    //   null,
    //   SuiTransactionBlockResponseOptions(showEffects: true),
    //   ExecuteTransactionRequestType.WaitForLocalExecution,
    // );

    // debugPrint(
    //     "sponsorSignAndExecuteResponse.digest:${sponsorSignAndExecuteResponse.digest}");
  }

  Future<void> signInWithZkLogin() async {
    try {
      final nonce = await getNewNonce();

      final currentUri = Uri.base;
      final redirectUri = Uri(
        host: currentUri.host,
        scheme: currentUri.scheme,
        port: currentUri.port,
        path: 'static.html',
      );

      final authUrl =
          'https://id.twitch.tv/oauth2/authorize?response_type=token+id_token&client_id=$twitchClientId&redirect_uri=$redirectUri&scope=openid&force_verify=true&lang=en&login_type=login&nonce=$nonce';

      debugPrint('Redirect uri: $redirectUri');

      _popupWin = html.window.open(
          authUrl, "Twitch Auth", "width=800, height=900, scrollbars=yes");
    } catch (error) {
      debugPrint('!!! ERROR - ${error.toString()}');
    }
  }

  Future<String> getNewNonce() async {
    final summary = await suiClient.getLatestSuiSystemState();
    accountAliveEpoch = int.parse(summary.epoch) +
        2; // this means the ephemeral key will be active for 2 epochs from now.
    accountEphemeralKeyPair = Ed25519Keypair();
    accountRandomness = toBigIntBE(generateRandomnessBytes());

    if (accountEphemeralKeyPair?.getPublicKey() case final publicKey?) {
      accountNonce = generateNonce(
          publicKey, accountAliveEpoch, accountRandomness.toString());

      debugPrint('Nonce: $accountNonce');

      return accountNonce;
    }

    return '';
  }

  Uint8List generateRandomnessBytes() {
    Uint8List bytes = randomBytes(16);

    return bytes;
  }

  /// Parse data to extract the token.
  String getJwtToken(String redirectUriString) {
    debugPrint('Redirect URI: $redirectUriString');

    final receivedUri = Uri.parse(redirectUriString);

    /// Close the popup window
    if (_popupWin != null) {
      _popupWin?.close();
      _popupWin = null;
    }

    setState(() => oauthIdToken = receivedUri.fragment
        .split('&')
        .firstWhere((e) => e.startsWith('id_token='))
        .substring('id_token='.length));

    debugPrint('OAuth JWT Token: $oauthIdToken');

    if (oauthIdToken.isEmpty) {
      debugPrint('Error - Token is empty');
      return '';
    }

    return oauthIdToken;
  }

  Future<ZkLoginWallet> getOrCreateZkLoginWallet(
      {required String oauthIdToken}) async {
    final decodedToken = JwtDecoder.decode(oauthIdToken);
    final jwtModel = GoogleJwtModel.fromJson(decodedToken);
    debugPrint("decodedToken - ${jwtModel.toJson()}");

    final zkLoginWallet = await zkWalletClient.getOrCreateZkLoginWallet(
      jwt: oauthIdToken,
    );
    debugPrint("zkLoginWallet - ${zkLoginWallet.toJson()}"); /*  */

    return zkLoginWallet;
  }

  Future<CreateZkLoginProofResult> createZkLoginProof({
    required ZkLoginWallet zkLoginWallet,
  }) async {
    final decodedToken = JwtDecoder.decode(oauthIdToken);
    final jwtModel = GoogleJwtModel.fromJson(decodedToken);
    debugPrint("decodedToken - ${jwtModel.toJson()}");

    final publicKey = accountEphemeralKeyPair?.getPublicKey();
    if (publicKey == null) {
      throw Exception('Public key is null');
    }

    final jwtRandomnessBytes = writeBigInt(accountRandomness);
    final salt = base64Decode(zkLoginWallet.salt);

    debugPrint('jwtRandomnessBytes - $jwtRandomnessBytes');
    debugPrint('salt - $salt');

    final proofResult = await zkProverClient.createZkLoginProof(
      jwt: oauthIdToken,
      maxEpoch: accountAliveEpoch,
      ephemeralPublicKey: publicKey,
      jwtRandomness: accountRandomness.toString(),
      salt: salt,
      keyClaimName: 'sub',
    );

    debugPrint("proofResult - ${proofResult.toJson()}");

    return proofResult;
  }

  Uint8List writeBigInt(BigInt number) {
    // Not handling negative numbers. Decide how you want to do that.
    int bytes = (number.bitLength + 7) >> 3;
    var b256 = BigInt.from(256);
    var result = Uint8List(bytes);
    for (int i = 0; i < bytes; i++) {
      result[i] = number.remainder(b256).toInt();
      number = number >> 8;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: signInWithZkLogin,
                  child: const Text('zkLogin'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  oauthIdToken,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
