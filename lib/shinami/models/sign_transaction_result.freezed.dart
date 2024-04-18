// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_transaction_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignTransactionResult _$SignTransactionResultFromJson(
    Map<String, dynamic> json) {
  return _SignTransactionResult.fromJson(json);
}

/// @nodoc
mixin _$SignTransactionResult {
  String get signature => throw _privateConstructorUsedError;
  String get txDigest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignTransactionResultCopyWith<SignTransactionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignTransactionResultCopyWith<$Res> {
  factory $SignTransactionResultCopyWith(SignTransactionResult value,
          $Res Function(SignTransactionResult) then) =
      _$SignTransactionResultCopyWithImpl<$Res, SignTransactionResult>;
  @useResult
  $Res call({String signature, String txDigest});
}

/// @nodoc
class _$SignTransactionResultCopyWithImpl<$Res,
        $Val extends SignTransactionResult>
    implements $SignTransactionResultCopyWith<$Res> {
  _$SignTransactionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signature = null,
    Object? txDigest = null,
  }) {
    return _then(_value.copyWith(
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      txDigest: null == txDigest
          ? _value.txDigest
          : txDigest // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignTransactionResultImplCopyWith<$Res>
    implements $SignTransactionResultCopyWith<$Res> {
  factory _$$SignTransactionResultImplCopyWith(
          _$SignTransactionResultImpl value,
          $Res Function(_$SignTransactionResultImpl) then) =
      __$$SignTransactionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String signature, String txDigest});
}

/// @nodoc
class __$$SignTransactionResultImplCopyWithImpl<$Res>
    extends _$SignTransactionResultCopyWithImpl<$Res,
        _$SignTransactionResultImpl>
    implements _$$SignTransactionResultImplCopyWith<$Res> {
  __$$SignTransactionResultImplCopyWithImpl(_$SignTransactionResultImpl _value,
      $Res Function(_$SignTransactionResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signature = null,
    Object? txDigest = null,
  }) {
    return _then(_$SignTransactionResultImpl(
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      txDigest: null == txDigest
          ? _value.txDigest
          : txDigest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignTransactionResultImpl implements _SignTransactionResult {
  _$SignTransactionResultImpl(
      {required this.signature, required this.txDigest});

  factory _$SignTransactionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignTransactionResultImplFromJson(json);

  @override
  final String signature;
  @override
  final String txDigest;

  @override
  String toString() {
    return 'SignTransactionResult(signature: $signature, txDigest: $txDigest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignTransactionResultImpl &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.txDigest, txDigest) ||
                other.txDigest == txDigest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, signature, txDigest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignTransactionResultImplCopyWith<_$SignTransactionResultImpl>
      get copyWith => __$$SignTransactionResultImplCopyWithImpl<
          _$SignTransactionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignTransactionResultImplToJson(
      this,
    );
  }
}

abstract class _SignTransactionResult implements SignTransactionResult {
  factory _SignTransactionResult(
      {required final String signature,
      required final String txDigest}) = _$SignTransactionResultImpl;

  factory _SignTransactionResult.fromJson(Map<String, dynamic> json) =
      _$SignTransactionResultImpl.fromJson;

  @override
  String get signature;
  @override
  String get txDigest;
  @override
  @JsonKey(ignore: true)
  _$$SignTransactionResultImplCopyWith<_$SignTransactionResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
