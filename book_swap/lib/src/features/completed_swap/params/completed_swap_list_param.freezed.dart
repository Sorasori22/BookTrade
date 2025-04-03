// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completed_swap_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompletedSwapListParam {
  /// Find for both requester and owner
  ProfileId get profileId => throw _privateConstructorUsedError;

  /// Create a copy of CompletedSwapListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedSwapListParamCopyWith<CompletedSwapListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedSwapListParamCopyWith<$Res> {
  factory $CompletedSwapListParamCopyWith(CompletedSwapListParam value,
          $Res Function(CompletedSwapListParam) then) =
      _$CompletedSwapListParamCopyWithImpl<$Res, CompletedSwapListParam>;
  @useResult
  $Res call({ProfileId profileId});
}

/// @nodoc
class _$CompletedSwapListParamCopyWithImpl<$Res,
        $Val extends CompletedSwapListParam>
    implements $CompletedSwapListParamCopyWith<$Res> {
  _$CompletedSwapListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedSwapListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = null,
  }) {
    return _then(_value.copyWith(
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedSwapListParamImplCopyWith<$Res>
    implements $CompletedSwapListParamCopyWith<$Res> {
  factory _$$CompletedSwapListParamImplCopyWith(
          _$CompletedSwapListParamImpl value,
          $Res Function(_$CompletedSwapListParamImpl) then) =
      __$$CompletedSwapListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileId profileId});
}

/// @nodoc
class __$$CompletedSwapListParamImplCopyWithImpl<$Res>
    extends _$CompletedSwapListParamCopyWithImpl<$Res,
        _$CompletedSwapListParamImpl>
    implements _$$CompletedSwapListParamImplCopyWith<$Res> {
  __$$CompletedSwapListParamImplCopyWithImpl(
      _$CompletedSwapListParamImpl _value,
      $Res Function(_$CompletedSwapListParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletedSwapListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = null,
  }) {
    return _then(_$CompletedSwapListParamImpl(
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
    ));
  }
}

/// @nodoc

class _$CompletedSwapListParamImpl implements _CompletedSwapListParam {
  const _$CompletedSwapListParamImpl({required this.profileId});

  /// Find for both requester and owner
  @override
  final ProfileId profileId;

  @override
  String toString() {
    return 'CompletedSwapListParam(profileId: $profileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedSwapListParamImpl &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileId);

  /// Create a copy of CompletedSwapListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedSwapListParamImplCopyWith<_$CompletedSwapListParamImpl>
      get copyWith => __$$CompletedSwapListParamImplCopyWithImpl<
          _$CompletedSwapListParamImpl>(this, _$identity);
}

abstract class _CompletedSwapListParam implements CompletedSwapListParam {
  const factory _CompletedSwapListParam({required final ProfileId profileId}) =
      _$CompletedSwapListParamImpl;

  /// Find for both requester and owner
  @override
  ProfileId get profileId;

  /// Create a copy of CompletedSwapListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedSwapListParamImplCopyWith<_$CompletedSwapListParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
