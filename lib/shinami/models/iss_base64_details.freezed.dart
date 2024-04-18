// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iss_base64_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IssBase64Details _$IssBase64DetailsFromJson(Map<String, dynamic> json) {
  return _IssBase64Details.fromJson(json);
}

/// @nodoc
mixin _$IssBase64Details {
  String get value => throw _privateConstructorUsedError;
  int get indexMod4 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssBase64DetailsCopyWith<IssBase64Details> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssBase64DetailsCopyWith<$Res> {
  factory $IssBase64DetailsCopyWith(
          IssBase64Details value, $Res Function(IssBase64Details) then) =
      _$IssBase64DetailsCopyWithImpl<$Res, IssBase64Details>;
  @useResult
  $Res call({String value, int indexMod4});
}

/// @nodoc
class _$IssBase64DetailsCopyWithImpl<$Res, $Val extends IssBase64Details>
    implements $IssBase64DetailsCopyWith<$Res> {
  _$IssBase64DetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? indexMod4 = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      indexMod4: null == indexMod4
          ? _value.indexMod4
          : indexMod4 // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IssBase64DetailsImplCopyWith<$Res>
    implements $IssBase64DetailsCopyWith<$Res> {
  factory _$$IssBase64DetailsImplCopyWith(_$IssBase64DetailsImpl value,
          $Res Function(_$IssBase64DetailsImpl) then) =
      __$$IssBase64DetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, int indexMod4});
}

/// @nodoc
class __$$IssBase64DetailsImplCopyWithImpl<$Res>
    extends _$IssBase64DetailsCopyWithImpl<$Res, _$IssBase64DetailsImpl>
    implements _$$IssBase64DetailsImplCopyWith<$Res> {
  __$$IssBase64DetailsImplCopyWithImpl(_$IssBase64DetailsImpl _value,
      $Res Function(_$IssBase64DetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? indexMod4 = null,
  }) {
    return _then(_$IssBase64DetailsImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      indexMod4: null == indexMod4
          ? _value.indexMod4
          : indexMod4 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IssBase64DetailsImpl implements _IssBase64Details {
  _$IssBase64DetailsImpl({this.value = '', this.indexMod4 = 0});

  factory _$IssBase64DetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssBase64DetailsImplFromJson(json);

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final int indexMod4;

  @override
  String toString() {
    return 'IssBase64Details(value: $value, indexMod4: $indexMod4)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssBase64DetailsImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.indexMod4, indexMod4) ||
                other.indexMod4 == indexMod4));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, indexMod4);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IssBase64DetailsImplCopyWith<_$IssBase64DetailsImpl> get copyWith =>
      __$$IssBase64DetailsImplCopyWithImpl<_$IssBase64DetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssBase64DetailsImplToJson(
      this,
    );
  }
}

abstract class _IssBase64Details implements IssBase64Details {
  factory _IssBase64Details({final String value, final int indexMod4}) =
      _$IssBase64DetailsImpl;

  factory _IssBase64Details.fromJson(Map<String, dynamic> json) =
      _$IssBase64DetailsImpl.fromJson;

  @override
  String get value;
  @override
  int get indexMod4;
  @override
  @JsonKey(ignore: true)
  _$$IssBase64DetailsImplCopyWith<_$IssBase64DetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
