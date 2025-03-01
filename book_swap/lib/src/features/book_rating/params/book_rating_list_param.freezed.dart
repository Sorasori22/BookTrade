// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_rating_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookRatingListParam {
  ProfileId? get userId => throw _privateConstructorUsedError;
  BookId? get bookId => throw _privateConstructorUsedError;
  int? get minRating => throw _privateConstructorUsedError;
  int? get maxRating => throw _privateConstructorUsedError;

  /// Create a copy of BookRatingListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRatingListParamCopyWith<BookRatingListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRatingListParamCopyWith<$Res> {
  factory $BookRatingListParamCopyWith(
          BookRatingListParam value, $Res Function(BookRatingListParam) then) =
      _$BookRatingListParamCopyWithImpl<$Res, BookRatingListParam>;
  @useResult
  $Res call(
      {ProfileId? userId, BookId? bookId, int? minRating, int? maxRating});
}

/// @nodoc
class _$BookRatingListParamCopyWithImpl<$Res, $Val extends BookRatingListParam>
    implements $BookRatingListParamCopyWith<$Res> {
  _$BookRatingListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRatingListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? bookId = freezed,
    Object? minRating = freezed,
    Object? maxRating = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
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
abstract class _$$BookRatingListParamImplCopyWith<$Res>
    implements $BookRatingListParamCopyWith<$Res> {
  factory _$$BookRatingListParamImplCopyWith(_$BookRatingListParamImpl value,
          $Res Function(_$BookRatingListParamImpl) then) =
      __$$BookRatingListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileId? userId, BookId? bookId, int? minRating, int? maxRating});
}

/// @nodoc
class __$$BookRatingListParamImplCopyWithImpl<$Res>
    extends _$BookRatingListParamCopyWithImpl<$Res, _$BookRatingListParamImpl>
    implements _$$BookRatingListParamImplCopyWith<$Res> {
  __$$BookRatingListParamImplCopyWithImpl(_$BookRatingListParamImpl _value,
      $Res Function(_$BookRatingListParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRatingListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? bookId = freezed,
    Object? minRating = freezed,
    Object? maxRating = freezed,
  }) {
    return _then(_$BookRatingListParamImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
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

class _$BookRatingListParamImpl implements _BookRatingListParam {
  const _$BookRatingListParamImpl(
      {this.userId, this.bookId, this.minRating, this.maxRating});

  @override
  final ProfileId? userId;
  @override
  final BookId? bookId;
  @override
  final int? minRating;
  @override
  final int? maxRating;

  @override
  String toString() {
    return 'BookRatingListParam(userId: $userId, bookId: $bookId, minRating: $minRating, maxRating: $maxRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRatingListParamImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.maxRating, maxRating) ||
                other.maxRating == maxRating));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, bookId, minRating, maxRating);

  /// Create a copy of BookRatingListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRatingListParamImplCopyWith<_$BookRatingListParamImpl> get copyWith =>
      __$$BookRatingListParamImplCopyWithImpl<_$BookRatingListParamImpl>(
          this, _$identity);
}

abstract class _BookRatingListParam implements BookRatingListParam {
  const factory _BookRatingListParam(
      {final ProfileId? userId,
      final BookId? bookId,
      final int? minRating,
      final int? maxRating}) = _$BookRatingListParamImpl;

  @override
  ProfileId? get userId;
  @override
  BookId? get bookId;
  @override
  int? get minRating;
  @override
  int? get maxRating;

  /// Create a copy of BookRatingListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRatingListParamImplCopyWith<_$BookRatingListParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
