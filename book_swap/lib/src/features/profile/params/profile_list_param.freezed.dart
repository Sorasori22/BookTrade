// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileListParam {
  String? get usernameSearch => throw _privateConstructorUsedError;
  String? get locationSearch => throw _privateConstructorUsedError;

  /// Create a copy of ProfileListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileListParamCopyWith<ProfileListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileListParamCopyWith<$Res> {
  factory $ProfileListParamCopyWith(
          ProfileListParam value, $Res Function(ProfileListParam) then) =
      _$ProfileListParamCopyWithImpl<$Res, ProfileListParam>;
  @useResult
  $Res call({String? usernameSearch, String? locationSearch});
}

/// @nodoc
class _$ProfileListParamCopyWithImpl<$Res, $Val extends ProfileListParam>
    implements $ProfileListParamCopyWith<$Res> {
  _$ProfileListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameSearch = freezed,
    Object? locationSearch = freezed,
  }) {
    return _then(_value.copyWith(
      usernameSearch: freezed == usernameSearch
          ? _value.usernameSearch
          : usernameSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      locationSearch: freezed == locationSearch
          ? _value.locationSearch
          : locationSearch // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileListParamImplCopyWith<$Res>
    implements $ProfileListParamCopyWith<$Res> {
  factory _$$ProfileListParamImplCopyWith(_$ProfileListParamImpl value,
          $Res Function(_$ProfileListParamImpl) then) =
      __$$ProfileListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? usernameSearch, String? locationSearch});
}

/// @nodoc
class __$$ProfileListParamImplCopyWithImpl<$Res>
    extends _$ProfileListParamCopyWithImpl<$Res, _$ProfileListParamImpl>
    implements _$$ProfileListParamImplCopyWith<$Res> {
  __$$ProfileListParamImplCopyWithImpl(_$ProfileListParamImpl _value,
      $Res Function(_$ProfileListParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameSearch = freezed,
    Object? locationSearch = freezed,
  }) {
    return _then(_$ProfileListParamImpl(
      usernameSearch: freezed == usernameSearch
          ? _value.usernameSearch
          : usernameSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      locationSearch: freezed == locationSearch
          ? _value.locationSearch
          : locationSearch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileListParamImpl extends _ProfileListParam {
  const _$ProfileListParamImpl({this.usernameSearch, this.locationSearch})
      : super._();

  @override
  final String? usernameSearch;
  @override
  final String? locationSearch;

  @override
  String toString() {
    return 'ProfileListParam(usernameSearch: $usernameSearch, locationSearch: $locationSearch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileListParamImpl &&
            (identical(other.usernameSearch, usernameSearch) ||
                other.usernameSearch == usernameSearch) &&
            (identical(other.locationSearch, locationSearch) ||
                other.locationSearch == locationSearch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameSearch, locationSearch);

  /// Create a copy of ProfileListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileListParamImplCopyWith<_$ProfileListParamImpl> get copyWith =>
      __$$ProfileListParamImplCopyWithImpl<_$ProfileListParamImpl>(
          this, _$identity);
}

abstract class _ProfileListParam extends ProfileListParam {
  const factory _ProfileListParam(
      {final String? usernameSearch,
      final String? locationSearch}) = _$ProfileListParamImpl;
  const _ProfileListParam._() : super._();

  @override
  String? get usernameSearch;
  @override
  String? get locationSearch;

  /// Create a copy of ProfileListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileListParamImplCopyWith<_$ProfileListParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
