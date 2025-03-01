// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_rating_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserRatingListParam {
  ProfileId? get raterId => throw _privateConstructorUsedError;
  ProfileId? get ratedUserId => throw _privateConstructorUsedError;
  int? get tradeRequestId => throw _privateConstructorUsedError;
  int? get minRating => throw _privateConstructorUsedError;
  int? get maxRating => throw _privateConstructorUsedError;

  /// Create a copy of UserRatingListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRatingListParamCopyWith<UserRatingListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRatingListParamCopyWith<$Res> {
  factory $UserRatingListParamCopyWith(
          UserRatingListParam value, $Res Function(UserRatingListParam) then) =
      _$UserRatingListParamCopyWithImpl<$Res, UserRatingListParam>;
  @useResult
  $Res call(
      {ProfileId? raterId,
      ProfileId? ratedUserId,
      int? tradeRequestId,
      int? minRating,
      int? maxRating});
}

/// @nodoc
class _$UserRatingListParamCopyWithImpl<$Res, $Val extends UserRatingListParam>
    implements $UserRatingListParamCopyWith<$Res> {
  _$UserRatingListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRatingListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raterId = freezed,
    Object? ratedUserId = freezed,
    Object? tradeRequestId = freezed,
    Object? minRating = freezed,
    Object? maxRating = freezed,
  }) {
    return _then(_value.copyWith(
      raterId: freezed == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      ratedUserId: freezed == ratedUserId
          ? _value.ratedUserId
          : ratedUserId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRating: freezed == maxRating
          ? _value.maxRating
          : maxRating // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRatingListParamImplCopyWith<$Res>
    implements $UserRatingListParamCopyWith<$Res> {
  factory _$$UserRatingListParamImplCopyWith(_$UserRatingListParamImpl value,
          $Res Function(_$UserRatingListParamImpl) then) =
      __$$UserRatingListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileId? raterId,
      ProfileId? ratedUserId,
      int? tradeRequestId,
      int? minRating,
      int? maxRating});
}

/// @nodoc
class __$$UserRatingListParamImplCopyWithImpl<$Res>
    extends _$UserRatingListParamCopyWithImpl<$Res, _$UserRatingListParamImpl>
    implements _$$UserRatingListParamImplCopyWith<$Res> {
  __$$UserRatingListParamImplCopyWithImpl(_$UserRatingListParamImpl _value,
      $Res Function(_$UserRatingListParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRatingListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raterId = freezed,
    Object? ratedUserId = freezed,
    Object? tradeRequestId = freezed,
    Object? minRating = freezed,
    Object? maxRating = freezed,
  }) {
    return _then(_$UserRatingListParamImpl(
      raterId: freezed == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      ratedUserId: freezed == ratedUserId
          ? _value.ratedUserId
          : ratedUserId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRating: freezed == maxRating
          ? _value.maxRating
          : maxRating // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UserRatingListParamImpl implements _UserRatingListParam {
  const _$UserRatingListParamImpl(
      {this.raterId,
      this.ratedUserId,
      this.tradeRequestId,
      this.minRating,
      this.maxRating});

  @override
  final ProfileId? raterId;
  @override
  final ProfileId? ratedUserId;
  @override
  final int? tradeRequestId;
  @override
  final int? minRating;
  @override
  final int? maxRating;

  @override
  String toString() {
    return 'UserRatingListParam(raterId: $raterId, ratedUserId: $ratedUserId, tradeRequestId: $tradeRequestId, minRating: $minRating, maxRating: $maxRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRatingListParamImpl &&
            (identical(other.raterId, raterId) || other.raterId == raterId) &&
            (identical(other.ratedUserId, ratedUserId) ||
                other.ratedUserId == ratedUserId) &&
            (identical(other.tradeRequestId, tradeRequestId) ||
                other.tradeRequestId == tradeRequestId) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.maxRating, maxRating) ||
                other.maxRating == maxRating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, raterId, ratedUserId, tradeRequestId, minRating, maxRating);

  /// Create a copy of UserRatingListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRatingListParamImplCopyWith<_$UserRatingListParamImpl> get copyWith =>
      __$$UserRatingListParamImplCopyWithImpl<_$UserRatingListParamImpl>(
          this, _$identity);
}

abstract class _UserRatingListParam implements UserRatingListParam {
  const factory _UserRatingListParam(
      {final ProfileId? raterId,
      final ProfileId? ratedUserId,
      final int? tradeRequestId,
      final int? minRating,
      final int? maxRating}) = _$UserRatingListParamImpl;

  @override
  ProfileId? get raterId;
  @override
  ProfileId? get ratedUserId;
  @override
  int? get tradeRequestId;
  @override
  int? get minRating;
  @override
  int? get maxRating;

  /// Create a copy of UserRatingListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRatingListParamImplCopyWith<_$UserRatingListParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
