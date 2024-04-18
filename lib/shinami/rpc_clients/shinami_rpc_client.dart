import 'package:sui/providers/json_rpc_provider.dart';
import 'package:sui/rpc/client.dart';

abstract class ShinamiRpcClient with JsonRpcProvider {
  ShinamiRpcClient(
    String url, {
    Map<String, dynamic>? headers,
  }) {
    rpcClient = JsonRpcClient(
      url,
      headers: headers,
    );
  }

  late final JsonRpcClient rpcClient;
  @override
  JsonRpcClient get client => rpcClient;
}
