// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BannerListParam {
  String? get search => throw _privateConstructorUsedError;

  /// Create a copy of BannerListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerListParamCopyWith<BannerListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerListParamCopyWith<$Res> {
  factory $BannerListParamCopyWith(
          BannerListParam value, $Res Function(BannerListParam) then) =
      _$BannerListParamCopyWithImpl<$Res, BannerListParam>;
  @useResult
  $Res call({String? search});
}

/// @nodoc
class _$BannerListParamCopyWithImpl<$Res, $Val extends BannerListParam>
    implements $BannerListParamCopyWith<$Res> {
  _$BannerListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerListParamImplCopyWith<$Res>
    implements $BannerListParamCopyWith<$Res> {
  factory _$$BannerListParamImplCopyWith(_$BannerListParamImpl value,
          $Res Function(_$BannerListParamImpl) then) =
      __$$BannerListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? search});
}

/// @nodoc
class __$$BannerListParamImplCopyWithImpl<$Res>
    extends _$BannerListParamCopyWithImpl<$Res, _$BannerListParamImpl>
    implements _$$BannerListParamImplCopyWith<$Res> {
  __$$BannerListParamImplCopyWithImpl(
      _$BannerListParamImpl _value, $Res Function(_$BannerListParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$BannerListParamImpl(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BannerListParamImpl extends _BannerListParam {
  const _$BannerListParamImpl({this.search}) : super._();

  @override
  final String? search;

  @override
  String toString() {
    return 'BannerListParam(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerListParamImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  /// Create a copy of BannerListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerListParamImplCopyWith<_$BannerListParamImpl> get copyWith =>
      __$$BannerListParamImplCopyWithImpl<_$BannerListParamImpl>(
          this, _$identity);
}

abstract class _BannerListParam extends BannerListParam {
  const factory _BannerListParam({final String? search}) =
      _$BannerListParamImpl;
  const _BannerListParam._() : super._();

  @override
  String? get search;

  /// Create a copy of BannerListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerListParamImplCopyWith<_$BannerListParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
