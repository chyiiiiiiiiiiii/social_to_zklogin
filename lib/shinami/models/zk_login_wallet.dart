import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_to_zklogin/shinami/models/zk_login_user_id.dart';

part 'zk_login_wallet.freezed.dart';
part 'zk_login_wallet.g.dart';

@freezed
class ZkLoginWallet with _$ZkLoginWallet {
  factory ZkLoginWallet({
    ZkLoginUserId? userId,
    @Default(0) int subWallet,
    @Default('') String salt,
    @Default('') String address,
  }) = _ZkLoginWallet;

  factory ZkLoginWallet.fromJson(Map<String, dynamic> json) =>
      _$ZkLoginWalletFromJson(json);
}
