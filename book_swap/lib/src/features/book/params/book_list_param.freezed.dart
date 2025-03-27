// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookListParam {
  String? get titleSearch => throw _privateConstructorUsedError;
  String? get authorSearch => throw _privateConstructorUsedError;
  ProfileId? get ownerId => throw _privateConstructorUsedError;
  int? get minCondition => throw _privateConstructorUsedError;
  int? get maxCondition => throw _privateConstructorUsedError;
  ProfileId? get toHideOwnerId => throw _privateConstructorUsedError;

  /// Create a copy of BookListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookListParamCopyWith<BookListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookListParamCopyWith<$Res> {
  factory $BookListParamCopyWith(
          BookListParam value, $Res Function(BookListParam) then) =
      _$BookListParamCopyWithImpl<$Res, BookListParam>;
  @useResult
  $Res call(
      {String? titleSearch,
      String? authorSearch,
      ProfileId? ownerId,
      int? minCondition,
      int? maxCondition,
      ProfileId? toHideOwnerId});
}

/// @nodoc
class _$BookListParamCopyWithImpl<$Res, $Val extends BookListParam>
    implements $BookListParamCopyWith<$Res> {
  _$BookListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleSearch = freezed,
    Object? authorSearch = freezed,
    Object? ownerId = freezed,
    Object? minCondition = freezed,
    Object? maxCondition = freezed,
    Object? toHideOwnerId = freezed,
  }) {
    return _then(_value.copyWith(
      titleSearch: freezed == titleSearch
          ? _value.titleSearch
          : titleSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      authorSearch: freezed == authorSearch
          ? _value.authorSearch
          : authorSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      minCondition: freezed == minCondition
          ? _value.minCondition
          : minCondition // ignore: cast_nullable_to_non_nullable
              as int?,
      maxCondition: freezed == maxCondition
          ? _value.maxCondition
          : maxCondition // ignore: cast_nullable_to_non_nullable
              as int?,
      toHideOwnerId: freezed == toHideOwnerId
          ? _value.toHideOwnerId
          : toHideOwnerId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookListParamImplCopyWith<$Res>
    implements $BookListParamCopyWith<$Res> {
  factory _$$BookListParamImplCopyWith(
          _$BookListParamImpl value, $Res Function(_$BookListParamImpl) then) =
      __$$BookListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? titleSearch,
      String? authorSearch,
      ProfileId? ownerId,
      int? minCondition,
      int? maxCondition,
      ProfileId? toHideOwnerId});
}

/// @nodoc
class __$$BookListParamImplCopyWithImpl<$Res>
    extends _$BookListParamCopyWithImpl<$Res, _$BookListParamImpl>
    implements _$$BookListParamImplCopyWith<$Res> {
  __$$BookListParamImplCopyWithImpl(
      _$BookListParamImpl _value, $Res Function(_$BookListParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleSearch = freezed,
    Object? authorSearch = freezed,
    Object? ownerId = freezed,
    Object? minCondition = freezed,
    Object? maxCondition = freezed,
    Object? toHideOwnerId = freezed,
  }) {
    return _then(_$BookListParamImpl(
      titleSearch: freezed == titleSearch
          ? _value.titleSearch
          : titleSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      authorSearch: freezed == authorSearch
          ? _value.authorSearch
          : authorSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      minCondition: freezed == minCondition
          ? _value.minCondition
          : minCondition // ignore: cast_nullable_to_non_nullable
              as int?,
      maxCondition: freezed == maxCondition
          ? _value.maxCondition
          : maxCondition // ignore: cast_nullable_to_non_nullable
              as int?,
      toHideOwnerId: freezed == toHideOwnerId
          ? _value.toHideOwnerId
          : toHideOwnerId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
    ));
  }
}

/// @nodoc

class _$BookListParamImpl extends _BookListParam {
  const _$BookListParamImpl(
      {this.titleSearch,
      this.authorSearch,
      this.ownerId,
      this.minCondition,
      this.maxCondition,
      this.toHideOwnerId})
      : super._();

  @override
  final String? titleSearch;
  @override
  final String? authorSearch;
  @override
  final ProfileId? ownerId;
  @override
  final int? minCondition;
  @override
  final int? maxCondition;
  @override
  final ProfileId? toHideOwnerId;

  @override
  String toString() {
    return 'BookListParam(titleSearch: $titleSearch, authorSearch: $authorSearch, ownerId: $ownerId, minCondition: $minCondition, maxCondition: $maxCondition, toHideOwnerId: $toHideOwnerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookListParamImpl &&
            (identical(other.titleSearch, titleSearch) ||
                other.titleSearch == titleSearch) &&
            (identical(other.authorSearch, authorSearch) ||
                other.authorSearch == authorSearch) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.minCondition, minCondition) ||
                other.minCondition == minCondition) &&
            (identical(other.maxCondition, maxCondition) ||
                other.maxCondition == maxCondition) &&
            (identical(other.toHideOwnerId, toHideOwnerId) ||
                other.toHideOwnerId == toHideOwnerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, titleSearch, authorSearch,
      ownerId, minCondition, maxCondition, toHideOwnerId);

  /// Create a copy of BookListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookListParamImplCopyWith<_$BookListParamImpl> get copyWith =>
      __$$BookListParamImplCopyWithImpl<_$BookListParamImpl>(this, _$identity);
}

abstract class _BookListParam extends BookListParam {
  const factory _BookListParam(
      {final String? titleSearch,
      final String? authorSearch,
      final ProfileId? ownerId,
      final int? minCondition,
      final int? maxCondition,
      final ProfileId? toHideOwnerId}) = _$BookListParamImpl;
  const _BookListParam._() : super._();

  @override
  String? get titleSearch;
  @override
  String? get authorSearch;
  @override
  ProfileId? get ownerId;
  @override
  int? get minCondition;
  @override
  int? get maxCondition;
  @override
  ProfileId? get toHideOwnerId;

  /// Create a copy of BookListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookListParamImplCopyWith<_$BookListParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
