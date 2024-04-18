// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zk_login_proof.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ZkLoginProof _$ZkLoginProofFromJson(Map<String, dynamic> json) {
  return _ZkLoginProof.fromJson(json);
}

/// @nodoc
mixin _$ZkLoginProof {
  ProofPoints? get proofPoints => throw _privateConstructorUsedError;
  Claim? get issBase64Details => throw _privateConstructorUsedError;
  String get headerBase64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZkLoginProofCopyWith<ZkLoginProof> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZkLoginProofCopyWith<$Res> {
  factory $ZkLoginProofCopyWith(
          ZkLoginProof value, $Res Function(ZkLoginProof) then) =
      _$ZkLoginProofCopyWithImpl<$Res, ZkLoginProof>;
  @useResult
  $Res call(
      {ProofPoints? proofPoints, Claim? issBase64Details, String headerBase64});
}

/// @nodoc
class _$ZkLoginProofCopyWithImpl<$Res, $Val extends ZkLoginProof>
    implements $ZkLoginProofCopyWith<$Res> {
  _$ZkLoginProofCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proofPoints = freezed,
    Object? issBase64Details = freezed,
    Object? headerBase64 = null,
  }) {
    return _then(_value.copyWith(
      proofPoints: freezed == proofPoints
          ? _value.proofPoints
          : proofPoints // ignore: cast_nullable_to_non_nullable
              as ProofPoints?,
      issBase64Details: freezed == issBase64Details
          ? _value.issBase64Details
          : issBase64Details // ignore: cast_nullable_to_non_nullable
              as Claim?,
      headerBase64: null == headerBase64
          ? _value.headerBase64
          : headerBase64 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZkLoginProofImplCopyWith<$Res>
    implements $ZkLoginProofCopyWith<$Res> {
  factory _$$ZkLoginProofImplCopyWith(
          _$ZkLoginProofImpl value, $Res Function(_$ZkLoginProofImpl) then) =
      __$$ZkLoginProofImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProofPoints? proofPoints, Claim? issBase64Details, String headerBase64});
}

/// @nodoc
class __$$ZkLoginProofImplCopyWithImpl<$Res>
    extends _$ZkLoginProofCopyWithImpl<$Res, _$ZkLoginProofImpl>
    implements _$$ZkLoginProofImplCopyWith<$Res> {
  __$$ZkLoginProofImplCopyWithImpl(
      _$ZkLoginProofImpl _value, $Res Function(_$ZkLoginProofImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proofPoints = freezed,
    Object? issBase64Details = freezed,
    Object? headerBase64 = null,
  }) {
    return _then(_$ZkLoginProofImpl(
      proofPoints: freezed == proofPoints
          ? _value.proofPoints
          : proofPoints // ignore: cast_nullable_to_non_nullable
              as ProofPoints?,
      issBase64Details: freezed == issBase64Details
          ? _value.issBase64Details
          : issBase64Details // ignore: cast_nullable_to_non_nullable
              as Claim?,
      headerBase64: null == headerBase64
          ? _value.headerBase64
          : headerBase64 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZkLoginProofImpl implements _ZkLoginProof {
  _$ZkLoginProofImpl(
      {this.proofPoints, this.issBase64Details, this.headerBase64 = ''});

  factory _$ZkLoginProofImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZkLoginProofImplFromJson(json);

  @override
  final ProofPoints? proofPoints;
  @override
  final Claim? issBase64Details;
  @override
  @JsonKey()
  final String headerBase64;

  @override
  String toString() {
    return 'ZkLoginProof(proofPoints: $proofPoints, issBase64Details: $issBase64Details, headerBase64: $headerBase64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZkLoginProofImpl &&
            (identical(other.proofPoints, proofPoints) ||
                other.proofPoints == proofPoints) &&
            (identical(other.issBase64Details, issBase64Details) ||
                other.issBase64Details == issBase64Details) &&
            (identical(other.headerBase64, headerBase64) ||
                other.headerBase64 == headerBase64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, proofPoints, issBase64Details, headerBase64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZkLoginProofImplCopyWith<_$ZkLoginProofImpl> get copyWith =>
      __$$ZkLoginProofImplCopyWithImpl<_$ZkLoginProofImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZkLoginProofImplToJson(
      this,
    );
  }
}

abstract class _ZkLoginProof implements ZkLoginProof {
  factory _ZkLoginProof(
      {final ProofPoints? proofPoints,
      final Claim? issBase64Details,
      final String headerBase64}) = _$ZkLoginProofImpl;

  factory _ZkLoginProof.fromJson(Map<String, dynamic> json) =
      _$ZkLoginProofImpl.fromJson;

  @override
  ProofPoints? get proofPoints;
  @override
  Claim? get issBase64Details;
  @override
  String get headerBase64;
  @override
  @JsonKey(ignore: true)
  _$$ZkLoginProofImplCopyWith<_$ZkLoginProofImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
