import 'package:social_to_zklogin/shinami/error/json_rpc_error.dart';
import 'package:social_to_zklogin/shinami/rpc_clients/shinami_key_client.dart';
import 'package:sui/utils/error.dart';

class KeySession {
  final String secret;
  final KeyClient keyClient;
  String? token;

  KeySession(this.secret, this.keyClient);

  Future<String> refreshToken() async {
    token = await keyClient.createSession(secret: secret);
    return token!;
  }

  Future<T> withToken<T>(Future<T> Function(String token) run) async {
    token ??= await refreshToken();
    try {
      return await run(token!);
    } catch (e) {
      // Adjust error handling based on your Dart environment. This is a basic example.
      // You'll need to define JSONRPCError and errorDetails or handle errors appropriately for your setup.
      if (e is RPCError && e.code == -32602) {
        final details = e
            .toString(); // Implement errorDetails according to your error handling
        if (details.contains("Bad session token")) {
          return await run(await refreshToken());
        }
      }
      rethrow; // Re-throw the exception if it's not the specific token error we're looking for
    }
  }
}
