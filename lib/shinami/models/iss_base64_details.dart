import 'package:freezed_annotation/freezed_annotation.dart';

part 'iss_base64_details.freezed.dart';
part 'iss_base64_details.g.dart';

@freezed
class IssBase64Details with _$IssBase64Details {
  factory IssBase64Details({
    @Default('') String value,
    @Default(0) int indexMod4,
  }) = _IssBase64Details;

  factory IssBase64Details.fromJson(Map<String, dynamic> json) =>
      _$IssBase64DetailsFromJson(json);
}
