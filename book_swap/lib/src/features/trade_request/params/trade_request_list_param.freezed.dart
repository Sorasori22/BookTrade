// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_request_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TradeRequestListParam {
  ProfileId? get requesterId => throw _privateConstructorUsedError;
  ProfileId? get ownerId => throw _privateConstructorUsedError;
  BookId? get bookId => throw _privateConstructorUsedError;
  BookId? get offeredBookId => throw _privateConstructorUsedError;
  TradeRequestStatus? get status => throw _privateConstructorUsedError;

  /// Create a copy of TradeRequestListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeRequestListParamCopyWith<TradeRequestListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeRequestListParamCopyWith<$Res> {
  factory $TradeRequestListParamCopyWith(TradeRequestListParam value,
          $Res Function(TradeRequestListParam) then) =
      _$TradeRequestListParamCopyWithImpl<$Res, TradeRequestListParam>;
  @useResult
  $Res call(
      {ProfileId? requesterId,
      ProfileId? ownerId,
      BookId? bookId,
      BookId? offeredBookId,
      TradeRequestStatus? status});
}

/// @nodoc
class _$TradeRequestListParamCopyWithImpl<$Res,
        $Val extends TradeRequestListParam>
    implements $TradeRequestListParamCopyWith<$Res> {
  _$TradeRequestListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeRequestListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requesterId = freezed,
    Object? ownerId = freezed,
    Object? bookId = freezed,
    Object? offeredBookId = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      requesterId: freezed == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      offeredBookId: freezed == offeredBookId
          ? _value.offeredBookId
          : offeredBookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TradeRequestStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeRequestListParamImplCopyWith<$Res>
    implements $TradeRequestListParamCopyWith<$Res> {
  factory _$$TradeRequestListParamImplCopyWith(
          _$TradeRequestListParamImpl value,
          $Res Function(_$TradeRequestListParamImpl) then) =
      __$$TradeRequestListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileId? requesterId,
      ProfileId? ownerId,
      BookId? bookId,
      BookId? offeredBookId,
      TradeRequestStatus? status});
}

/// @nodoc
class __$$TradeRequestListParamImplCopyWithImpl<$Res>
    extends _$TradeRequestListParamCopyWithImpl<$Res,
        _$TradeRequestListParamImpl>
    implements _$$TradeRequestListParamImplCopyWith<$Res> {
  __$$TradeRequestListParamImplCopyWithImpl(_$TradeRequestListParamImpl _value,
      $Res Function(_$TradeRequestListParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeRequestListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requesterId = freezed,
    Object? ownerId = freezed,
    Object? bookId = freezed,
    Object? offeredBookId = freezed,
    Object? status = freezed,
  }) {
    return _then(_$TradeRequestListParamImpl(
      requesterId: freezed == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      offeredBookId: freezed == offeredBookId
          ? _value.offeredBookId
          : offeredBookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TradeRequestStatus?,
    ));
  }
}

/// @nodoc

class _$TradeRequestListParamImpl implements _TradeRequestListParam {
  const _$TradeRequestListParamImpl(
      {this.requesterId,
      this.ownerId,
      this.bookId,
      this.offeredBookId,
      this.status});

  @override
  final ProfileId? requesterId;
  @override
  final ProfileId? ownerId;
  @override
  final BookId? bookId;
  @override
  final BookId? offeredBookId;
  @override
  final TradeRequestStatus? status;

  @override
  String toString() {
    return 'TradeRequestListParam(requesterId: $requesterId, ownerId: $ownerId, bookId: $bookId, offeredBookId: $offeredBookId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeRequestListParamImpl &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.offeredBookId, offeredBookId) ||
                other.offeredBookId == offeredBookId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, requesterId, ownerId, bookId, offeredBookId, status);

  /// Create a copy of TradeRequestListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeRequestListParamImplCopyWith<_$TradeRequestListParamImpl>
      get copyWith => __$$TradeRequestListParamImplCopyWithImpl<
          _$TradeRequestListParamImpl>(this, _$identity);
}

abstract class _TradeRequestListParam implements TradeRequestListParam {
  const factory _TradeRequestListParam(
      {final ProfileId? requesterId,
      final ProfileId? ownerId,
      final BookId? bookId,
      final BookId? offeredBookId,
      final TradeRequestStatus? status}) = _$TradeRequestListParamImpl;

  @override
  ProfileId? get requesterId;
  @override
  ProfileId? get ownerId;
  @override
  BookId? get bookId;
  @override
  BookId? get offeredBookId;
  @override
  TradeRequestStatus? get status;

  /// Create a copy of TradeRequestListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeRequestListParamImplCopyWith<_$TradeRequestListParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
