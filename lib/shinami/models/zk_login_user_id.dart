import 'package:freezed_annotation/freezed_annotation.dart';

part 'zk_login_user_id.freezed.dart';
part 'zk_login_user_id.g.dart';

@freezed
class ZkLoginUserId with _$ZkLoginUserId {
  factory ZkLoginUserId({
    @Default('iss') String iss,
    @Default('aud') String aud,
    @Default('keyClaimName') String keyClaimName,
    @Default('keyClaimValue') String keyClaimValue,
  }) = _ZkLoginUserId;

  factory ZkLoginUserId.fromJson(Map<String, dynamic> json) =>
      _$ZkLoginUserIdFromJson(json);
}
