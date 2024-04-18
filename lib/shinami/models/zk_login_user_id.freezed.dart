// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zk_login_user_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ZkLoginUserId _$ZkLoginUserIdFromJson(Map<String, dynamic> json) {
  return _ZkLoginUserId.fromJson(json);
}

/// @nodoc
mixin _$ZkLoginUserId {
  String get iss => throw _privateConstructorUsedError;
  String get aud => throw _privateConstructorUsedError;
  String get keyClaimName => throw _privateConstructorUsedError;
  String get keyClaimValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZkLoginUserIdCopyWith<ZkLoginUserId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZkLoginUserIdCopyWith<$Res> {
  factory $ZkLoginUserIdCopyWith(
          ZkLoginUserId value, $Res Function(ZkLoginUserId) then) =
      _$ZkLoginUserIdCopyWithImpl<$Res, ZkLoginUserId>;
  @useResult
  $Res call(
      {String iss, String aud, String keyClaimName, String keyClaimValue});
}

/// @nodoc
class _$ZkLoginUserIdCopyWithImpl<$Res, $Val extends ZkLoginUserId>
    implements $ZkLoginUserIdCopyWith<$Res> {
  _$ZkLoginUserIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iss = null,
    Object? aud = null,
    Object? keyClaimName = null,
    Object? keyClaimValue = null,
  }) {
    return _then(_value.copyWith(
      iss: null == iss
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String,
      aud: null == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      keyClaimName: null == keyClaimName
          ? _value.keyClaimName
          : keyClaimName // ignore: cast_nullable_to_non_nullable
              as String,
      keyClaimValue: null == keyClaimValue
          ? _value.keyClaimValue
          : keyClaimValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZkLoginUserIdImplCopyWith<$Res>
    implements $ZkLoginUserIdCopyWith<$Res> {
  factory _$$ZkLoginUserIdImplCopyWith(
          _$ZkLoginUserIdImpl value, $Res Function(_$ZkLoginUserIdImpl) then) =
      __$$ZkLoginUserIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String iss, String aud, String keyClaimName, String keyClaimValue});
}

/// @nodoc
class __$$ZkLoginUserIdImplCopyWithImpl<$Res>
    extends _$ZkLoginUserIdCopyWithImpl<$Res, _$ZkLoginUserIdImpl>
    implements _$$ZkLoginUserIdImplCopyWith<$Res> {
  __$$ZkLoginUserIdImplCopyWithImpl(
      _$ZkLoginUserIdImpl _value, $Res Function(_$ZkLoginUserIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iss = null,
    Object? aud = null,
    Object? keyClaimName = null,
    Object? keyClaimValue = null,
  }) {
    return _then(_$ZkLoginUserIdImpl(
      iss: null == iss
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String,
      aud: null == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      keyClaimName: null == keyClaimName
          ? _value.keyClaimName
          : keyClaimName // ignore: cast_nullable_to_non_nullable
              as String,
      keyClaimValue: null == keyClaimValue
          ? _value.keyClaimValue
          : keyClaimValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZkLoginUserIdImpl implements _ZkLoginUserId {
  _$ZkLoginUserIdImpl(
      {this.iss = 'iss',
      this.aud = 'aud',
      this.keyClaimName = 'keyClaimName',
      this.keyClaimValue = 'keyClaimValue'});

  factory _$ZkLoginUserIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZkLoginUserIdImplFromJson(json);

  @override
  @JsonKey()
  final String iss;
  @override
  @JsonKey()
  final String aud;
  @override
  @JsonKey()
  final String keyClaimName;
  @override
  @JsonKey()
  final String keyClaimValue;

  @override
  String toString() {
    return 'ZkLoginUserId(iss: $iss, aud: $aud, keyClaimName: $keyClaimName, keyClaimValue: $keyClaimValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZkLoginUserIdImpl &&
            (identical(other.iss, iss) || other.iss == iss) &&
            (identical(other.aud, aud) || other.aud == aud) &&
            (identical(other.keyClaimName, keyClaimName) ||
                other.keyClaimName == keyClaimName) &&
            (identical(other.keyClaimValue, keyClaimValue) ||
                other.keyClaimValue == keyClaimValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, iss, aud, keyClaimName, keyClaimValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZkLoginUserIdImplCopyWith<_$ZkLoginUserIdImpl> get copyWith =>
      __$$ZkLoginUserIdImplCopyWithImpl<_$ZkLoginUserIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZkLoginUserIdImplToJson(
      this,
    );
  }
}

abstract class _ZkLoginUserId implements ZkLoginUserId {
  factory _ZkLoginUserId(
      {final String iss,
      final String aud,
      final String keyClaimName,
      final String keyClaimValue}) = _$ZkLoginUserIdImpl;

  factory _ZkLoginUserId.fromJson(Map<String, dynamic> json) =
      _$ZkLoginUserIdImpl.fromJson;

  @override
  String get iss;
  @override
  String get aud;
  @override
  String get keyClaimName;
  @override
  String get keyClaimValue;
  @override
  @JsonKey(ignore: true)
  _$$ZkLoginUserIdImplCopyWith<_$ZkLoginUserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
