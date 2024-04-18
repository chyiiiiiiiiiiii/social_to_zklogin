// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_jwt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoogleJwtModel _$GoogleJwtModelFromJson(Map<String, dynamic> json) {
  return _GoogleJwtModel.fromJson(json);
}

/// @nodoc
mixin _$GoogleJwtModel {
  String get iss => throw _privateConstructorUsedError;
  String get azp => throw _privateConstructorUsedError;
  String get aud => throw _privateConstructorUsedError;
  String get sub => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  int get nbf => throw _privateConstructorUsedError;
  int get iat => throw _privateConstructorUsedError;
  int get exp => throw _privateConstructorUsedError;
  String get jti => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleJwtModelCopyWith<GoogleJwtModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleJwtModelCopyWith<$Res> {
  factory $GoogleJwtModelCopyWith(
          GoogleJwtModel value, $Res Function(GoogleJwtModel) then) =
      _$GoogleJwtModelCopyWithImpl<$Res, GoogleJwtModel>;
  @useResult
  $Res call(
      {String iss,
      String azp,
      String aud,
      String sub,
      String nonce,
      int nbf,
      int iat,
      int exp,
      String jti});
}

/// @nodoc
class _$GoogleJwtModelCopyWithImpl<$Res, $Val extends GoogleJwtModel>
    implements $GoogleJwtModelCopyWith<$Res> {
  _$GoogleJwtModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iss = null,
    Object? azp = null,
    Object? aud = null,
    Object? sub = null,
    Object? nonce = null,
    Object? nbf = null,
    Object? iat = null,
    Object? exp = null,
    Object? jti = null,
  }) {
    return _then(_value.copyWith(
      iss: null == iss
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String,
      azp: null == azp
          ? _value.azp
          : azp // ignore: cast_nullable_to_non_nullable
              as String,
      aud: null == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      sub: null == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      nbf: null == nbf
          ? _value.nbf
          : nbf // ignore: cast_nullable_to_non_nullable
              as int,
      iat: null == iat
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      jti: null == jti
          ? _value.jti
          : jti // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleJwtModelImplCopyWith<$Res>
    implements $GoogleJwtModelCopyWith<$Res> {
  factory _$$GoogleJwtModelImplCopyWith(_$GoogleJwtModelImpl value,
          $Res Function(_$GoogleJwtModelImpl) then) =
      __$$GoogleJwtModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String iss,
      String azp,
      String aud,
      String sub,
      String nonce,
      int nbf,
      int iat,
      int exp,
      String jti});
}

/// @nodoc
class __$$GoogleJwtModelImplCopyWithImpl<$Res>
    extends _$GoogleJwtModelCopyWithImpl<$Res, _$GoogleJwtModelImpl>
    implements _$$GoogleJwtModelImplCopyWith<$Res> {
  __$$GoogleJwtModelImplCopyWithImpl(
      _$GoogleJwtModelImpl _value, $Res Function(_$GoogleJwtModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iss = null,
    Object? azp = null,
    Object? aud = null,
    Object? sub = null,
    Object? nonce = null,
    Object? nbf = null,
    Object? iat = null,
    Object? exp = null,
    Object? jti = null,
  }) {
    return _then(_$GoogleJwtModelImpl(
      iss: null == iss
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String,
      azp: null == azp
          ? _value.azp
          : azp // ignore: cast_nullable_to_non_nullable
              as String,
      aud: null == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      sub: null == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      nbf: null == nbf
          ? _value.nbf
          : nbf // ignore: cast_nullable_to_non_nullable
              as int,
      iat: null == iat
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      jti: null == jti
          ? _value.jti
          : jti // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleJwtModelImpl implements _GoogleJwtModel {
  _$GoogleJwtModelImpl(
      {this.iss = '',
      this.azp = '',
      this.aud = '',
      this.sub = '',
      this.nonce = '',
      this.nbf = 0,
      this.iat = 0,
      this.exp = 0,
      this.jti = ''});

  factory _$GoogleJwtModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleJwtModelImplFromJson(json);

  @override
  @JsonKey()
  final String iss;
  @override
  @JsonKey()
  final String azp;
  @override
  @JsonKey()
  final String aud;
  @override
  @JsonKey()
  final String sub;
  @override
  @JsonKey()
  final String nonce;
  @override
  @JsonKey()
  final int nbf;
  @override
  @JsonKey()
  final int iat;
  @override
  @JsonKey()
  final int exp;
  @override
  @JsonKey()
  final String jti;

  @override
  String toString() {
    return 'GoogleJwtModel(iss: $iss, azp: $azp, aud: $aud, sub: $sub, nonce: $nonce, nbf: $nbf, iat: $iat, exp: $exp, jti: $jti)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleJwtModelImpl &&
            (identical(other.iss, iss) || other.iss == iss) &&
            (identical(other.azp, azp) || other.azp == azp) &&
            (identical(other.aud, aud) || other.aud == aud) &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.nbf, nbf) || other.nbf == nbf) &&
            (identical(other.iat, iat) || other.iat == iat) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.jti, jti) || other.jti == jti));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, iss, azp, aud, sub, nonce, nbf, iat, exp, jti);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleJwtModelImplCopyWith<_$GoogleJwtModelImpl> get copyWith =>
      __$$GoogleJwtModelImplCopyWithImpl<_$GoogleJwtModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleJwtModelImplToJson(
      this,
    );
  }
}

abstract class _GoogleJwtModel implements GoogleJwtModel {
  factory _GoogleJwtModel(
      {final String iss,
      final String azp,
      final String aud,
      final String sub,
      final String nonce,
      final int nbf,
      final int iat,
      final int exp,
      final String jti}) = _$GoogleJwtModelImpl;

  factory _GoogleJwtModel.fromJson(Map<String, dynamic> json) =
      _$GoogleJwtModelImpl.fromJson;

  @override
  String get iss;
  @override
  String get azp;
  @override
  String get aud;
  @override
  String get sub;
  @override
  String get nonce;
  @override
  int get nbf;
  @override
  int get iat;
  @override
  int get exp;
  @override
  String get jti;
  @override
  @JsonKey(ignore: true)
  _$$GoogleJwtModelImplCopyWith<_$GoogleJwtModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
