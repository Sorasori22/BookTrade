// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_item_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WishlistItemListParam {
  ProfileId? get userId => throw _privateConstructorUsedError;
  String? get titleSearch => throw _privateConstructorUsedError;
  String? get authorSearch => throw _privateConstructorUsedError;
  String? get isbnSearch => throw _privateConstructorUsedError;

  /// Create a copy of WishlistItemListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistItemListParamCopyWith<WishlistItemListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistItemListParamCopyWith<$Res> {
  factory $WishlistItemListParamCopyWith(WishlistItemListParam value,
          $Res Function(WishlistItemListParam) then) =
      _$WishlistItemListParamCopyWithImpl<$Res, WishlistItemListParam>;
  @useResult
  $Res call(
      {ProfileId? userId,
      String? titleSearch,
      String? authorSearch,
      String? isbnSearch});
}

/// @nodoc
class _$WishlistItemListParamCopyWithImpl<$Res,
        $Val extends WishlistItemListParam>
    implements $WishlistItemListParamCopyWith<$Res> {
  _$WishlistItemListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistItemListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? titleSearch = freezed,
    Object? authorSearch = freezed,
    Object? isbnSearch = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      titleSearch: freezed == titleSearch
          ? _value.titleSearch
          : titleSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      authorSearch: freezed == authorSearch
          ? _value.authorSearch
          : authorSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      isbnSearch: freezed == isbnSearch
          ? _value.isbnSearch
          : isbnSearch // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistItemListParamImplCopyWith<$Res>
    implements $WishlistItemListParamCopyWith<$Res> {
  factory _$$WishlistItemListParamImplCopyWith(
          _$WishlistItemListParamImpl value,
          $Res Function(_$WishlistItemListParamImpl) then) =
      __$$WishlistItemListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileId? userId,
      String? titleSearch,
      String? authorSearch,
      String? isbnSearch});
}

/// @nodoc
class __$$WishlistItemListParamImplCopyWithImpl<$Res>
    extends _$WishlistItemListParamCopyWithImpl<$Res,
        _$WishlistItemListParamImpl>
    implements _$$WishlistItemListParamImplCopyWith<$Res> {
  __$$WishlistItemListParamImplCopyWithImpl(_$WishlistItemListParamImpl _value,
      $Res Function(_$WishlistItemListParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistItemListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? titleSearch = freezed,
    Object? authorSearch = freezed,
    Object? isbnSearch = freezed,
  }) {
    return _then(_$WishlistItemListParamImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId?,
      titleSearch: freezed == titleSearch
          ? _value.titleSearch
          : titleSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      authorSearch: freezed == authorSearch
          ? _value.authorSearch
          : authorSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      isbnSearch: freezed == isbnSearch
          ? _value.isbnSearch
          : isbnSearch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WishlistItemListParamImpl implements _WishlistItemListParam {
  const _$WishlistItemListParamImpl(
      {this.userId, this.titleSearch, this.authorSearch, this.isbnSearch});

  @override
  final ProfileId? userId;
  @override
  final String? titleSearch;
  @override
  final String? authorSearch;
  @override
  final String? isbnSearch;

  @override
  String toString() {
    return 'WishlistItemListParam(userId: $userId, titleSearch: $titleSearch, authorSearch: $authorSearch, isbnSearch: $isbnSearch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistItemListParamImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.titleSearch, titleSearch) ||
                other.titleSearch == titleSearch) &&
            (identical(other.authorSearch, authorSearch) ||
                other.authorSearch == authorSearch) &&
            (identical(other.isbnSearch, isbnSearch) ||
                other.isbnSearch == isbnSearch));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, titleSearch, authorSearch, isbnSearch);

  /// Create a copy of WishlistItemListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistItemListParamImplCopyWith<_$WishlistItemListParamImpl>
      get copyWith => __$$WishlistItemListParamImplCopyWithImpl<
          _$WishlistItemListParamImpl>(this, _$identity);
}

abstract class _WishlistItemListParam implements WishlistItemListParam {
  const factory _WishlistItemListParam(
      {final ProfileId? userId,
      final String? titleSearch,
      final String? authorSearch,
      final String? isbnSearch}) = _$WishlistItemListParamImpl;

  @override
  ProfileId? get userId;
  @override
  String? get titleSearch;
  @override
  String? get authorSearch;
  @override
  String? get isbnSearch;

  /// Create a copy of WishlistItemListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistItemListParamImplCopyWith<_$WishlistItemListParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
