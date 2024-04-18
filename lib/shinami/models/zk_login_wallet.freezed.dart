// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zk_login_wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ZkLoginWallet _$ZkLoginWalletFromJson(Map<String, dynamic> json) {
  return _ZkLoginWallet.fromJson(json);
}

/// @nodoc
mixin _$ZkLoginWallet {
  ZkLoginUserId? get userId => throw _privateConstructorUsedError;
  int get subWallet => throw _privateConstructorUsedError;
  String get salt => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZkLoginWalletCopyWith<ZkLoginWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZkLoginWalletCopyWith<$Res> {
  factory $ZkLoginWalletCopyWith(
          ZkLoginWallet value, $Res Function(ZkLoginWallet) then) =
      _$ZkLoginWalletCopyWithImpl<$Res, ZkLoginWallet>;
  @useResult
  $Res call(
      {ZkLoginUserId? userId, int subWallet, String salt, String address});

  $ZkLoginUserIdCopyWith<$Res>? get userId;
}

/// @nodoc
class _$ZkLoginWalletCopyWithImpl<$Res, $Val extends ZkLoginWallet>
    implements $ZkLoginWalletCopyWith<$Res> {
  _$ZkLoginWalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? subWallet = null,
    Object? salt = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ZkLoginUserId?,
      subWallet: null == subWallet
          ? _value.subWallet
          : subWallet // ignore: cast_nullable_to_non_nullable
              as int,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ZkLoginUserIdCopyWith<$Res>? get userId {
    if (_value.userId == null) {
      return null;
    }

    return $ZkLoginUserIdCopyWith<$Res>(_value.userId!, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ZkLoginWalletImplCopyWith<$Res>
    implements $ZkLoginWalletCopyWith<$Res> {
  factory _$$ZkLoginWalletImplCopyWith(
          _$ZkLoginWalletImpl value, $Res Function(_$ZkLoginWalletImpl) then) =
      __$$ZkLoginWalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ZkLoginUserId? userId, int subWallet, String salt, String address});

  @override
  $ZkLoginUserIdCopyWith<$Res>? get userId;
}

/// @nodoc
class __$$ZkLoginWalletImplCopyWithImpl<$Res>
    extends _$ZkLoginWalletCopyWithImpl<$Res, _$ZkLoginWalletImpl>
    implements _$$ZkLoginWalletImplCopyWith<$Res> {
  __$$ZkLoginWalletImplCopyWithImpl(
      _$ZkLoginWalletImpl _value, $Res Function(_$ZkLoginWalletImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? subWallet = null,
    Object? salt = null,
    Object? address = null,
  }) {
    return _then(_$ZkLoginWalletImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ZkLoginUserId?,
      subWallet: null == subWallet
          ? _value.subWallet
          : subWallet // ignore: cast_nullable_to_non_nullable
              as int,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZkLoginWalletImpl implements _ZkLoginWallet {
  _$ZkLoginWalletImpl(
      {this.userId, this.subWallet = 0, this.salt = '', this.address = ''});

  factory _$ZkLoginWalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZkLoginWalletImplFromJson(json);

  @override
  final ZkLoginUserId? userId;
  @override
  @JsonKey()
  final int subWallet;
  @override
  @JsonKey()
  final String salt;
  @override
  @JsonKey()
  final String address;

  @override
  String toString() {
    return 'ZkLoginWallet(userId: $userId, subWallet: $subWallet, salt: $salt, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZkLoginWalletImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.subWallet, subWallet) ||
                other.subWallet == subWallet) &&
            (identical(other.salt, salt) || other.salt == salt) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, subWallet, salt, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZkLoginWalletImplCopyWith<_$ZkLoginWalletImpl> get copyWith =>
      __$$ZkLoginWalletImplCopyWithImpl<_$ZkLoginWalletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZkLoginWalletImplToJson(
      this,
    );
  }
}

abstract class _ZkLoginWallet implements ZkLoginWallet {
  factory _ZkLoginWallet(
      {final ZkLoginUserId? userId,
      final int subWallet,
      final String salt,
      final String address}) = _$ZkLoginWalletImpl;

  factory _ZkLoginWallet.fromJson(Map<String, dynamic> json) =
      _$ZkLoginWalletImpl.fromJson;

  @override
  ZkLoginUserId? get userId;
  @override
  int get subWallet;
  @override
  String get salt;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$ZkLoginWalletImplCopyWith<_$ZkLoginWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
