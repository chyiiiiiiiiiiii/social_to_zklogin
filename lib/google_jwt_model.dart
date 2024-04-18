import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_jwt_model.freezed.dart';
part 'google_jwt_model.g.dart';

@freezed
class GoogleJwtModel with _$GoogleJwtModel {
  factory GoogleJwtModel({
    @Default('') String iss,
    @Default('') String azp,
    @Default('') String aud,
    @Default('') String sub,
    @Default('') String nonce,
    @Default(0) int nbf,
    @Default(0) int iat,
    @Default(0) int exp,
    @Default('') String jti,
  }) = _GoogleJwtModel;

  factory GoogleJwtModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleJwtModelFromJson(json);
}
