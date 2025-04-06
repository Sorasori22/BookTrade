// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_rating_overall_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookRatingOverallModel _$BookRatingOverallModelFromJson(
    Map<String, dynamic> json) {
  return _BookRatingOverallModel.fromJson(json);
}

/// @nodoc
mixin _$BookRatingOverallModel {
  @JsonKey(name: 'average')
  double get average => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_1_count')
  int get rating1Count => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_2_count')
  int get rating2Count => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_3_count')
  int get rating3Count => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_4_count')
  int get rating4Count => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_5_count')
  int get rating5Count => throw _privateConstructorUsedError;

  /// My rating as map, it has rating and comment key
  @JsonKey(name: 'mine')
  Map<String, dynamic>? get mine => throw _privateConstructorUsedError;

  /// Serializes this BookRatingOverallModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookRatingOverallModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRatingOverallModelCopyWith<BookRatingOverallModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRatingOverallModelCopyWith<$Res> {
  factory $BookRatingOverallModelCopyWith(BookRatingOverallModel value,
          $Res Function(BookRatingOverallModel) then) =
      _$BookRatingOverallModelCopyWithImpl<$Res, BookRatingOverallModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'average') double average,
      @JsonKey(name: 'rating_1_count') int rating1Count,
      @JsonKey(name: 'rating_2_count') int rating2Count,
      @JsonKey(name: 'rating_3_count') int rating3Count,
      @JsonKey(name: 'rating_4_count') int rating4Count,
      @JsonKey(name: 'rating_5_count') int rating5Count,
      @JsonKey(name: 'mine') Map<String, dynamic>? mine});
}

/// @nodoc
class _$BookRatingOverallModelCopyWithImpl<$Res,
        $Val extends BookRatingOverallModel>
    implements $BookRatingOverallModelCopyWith<$Res> {
  _$BookRatingOverallModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRatingOverallModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average = null,
    Object? rating1Count = null,
    Object? rating2Count = null,
    Object? rating3Count = null,
    Object? rating4Count = null,
    Object? rating5Count = null,
    Object? mine = freezed,
  }) {
    return _then(_value.copyWith(
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
      rating1Count: null == rating1Count
          ? _value.rating1Count
          : rating1Count // ignore: cast_nullable_to_non_nullable
              as int,
      rating2Count: null == rating2Count
          ? _value.rating2Count
          : rating2Count // ignore: cast_nullable_to_non_nullable
              as int,
      rating3Count: null == rating3Count
          ? _value.rating3Count
          : rating3Count // ignore: cast_nullable_to_non_nullable
              as int,
      rating4Count: null == rating4Count
          ? _value.rating4Count
          : rating4Count // ignore: cast_nullable_to_non_nullable
              as int,
      rating5Count: null == rating5Count
          ? _value.rating5Count
          : rating5Count // ignore: cast_nullable_to_non_nullable
              as int,
      mine: freezed == mine
          ? _value.mine
          : mine // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookRatingOverallModelImplCopyWith<$Res>
    implements $BookRatingOverallModelCopyWith<$Res> {
  factory _$$BookRatingOverallModelImplCopyWith(
          _$BookRatingOverallModelImpl value,
          $Res Function(_$BookRatingOverallModelImpl) then) =
      __$$BookRatingOverallModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'average') double average,
      @JsonKey(name: 'rating_1_count') int rating1Count,
      @JsonKey(name: 'rating_2_count') int rating2Count,
      @JsonKey(name: 'rating_3_count') int rating3Count,
      @JsonKey(name: 'rating_4_count') int rating4Count,
      @JsonKey(name: 'rating_5_count') int rating5Count,
      @JsonKey(name: 'mine') Map<String, dynamic>? mine});
}

/// @nodoc
class __$$BookRatingOverallModelImplCopyWithImpl<$Res>
    extends _$BookRatingOverallModelCopyWithImpl<$Res,
        _$BookRatingOverallModelImpl>
    implements _$$BookRatingOverallModelImplCopyWith<$Res> {
  __$$BookRatingOverallModelImplCopyWithImpl(
      _$BookRatingOverallModelImpl _value,
      $Res Function(_$BookRatingOverallModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRatingOverallModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average = null,
    Object? rating1Count = null,
    Object? rating2Count = null,
    Object? rating3Count = null,
    Object? rating4Count = null,
    Object? rating5Count = null,
    Object? mine = freezed,
  }) {
    return _then(_$BookRatingOverallModelImpl(
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
      rating1Count: null == rating1Count
          ? _value.rating1Count
          : rating1Count // ignore: cast_nullable_to_non_nullable
              as int,
      rating2Count: null == rating2Count
          ? _value.rating2Count
          : rating2Count // ignore: cast_nullable_to_non_nullable
              as int,
      rating3Count: null == rating3Count
          ? _value.rating3Count
          : rating3Count // ignore: cast_nullable_to_non_nullable
              as int,
      rating4Count: null == rating4Count
          ? _value.rating4Count
          : rating4Count // ignore: cast_nullable_to_non_nullable
              as int,
      rating5Count: null == rating5Count
          ? _value.rating5Count
          : rating5Count // ignore: cast_nullable_to_non_nullable
              as int,
      mine: freezed == mine
          ? _value._mine
          : mine // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookRatingOverallModelImpl extends _BookRatingOverallModel {
  const _$BookRatingOverallModelImpl(
      {@JsonKey(name: 'average') required this.average,
      @JsonKey(name: 'rating_1_count') required this.rating1Count,
      @JsonKey(name: 'rating_2_count') required this.rating2Count,
      @JsonKey(name: 'rating_3_count') required this.rating3Count,
      @JsonKey(name: 'rating_4_count') required this.rating4Count,
      @JsonKey(name: 'rating_5_count') required this.rating5Count,
      @JsonKey(name: 'mine') required final Map<String, dynamic>? mine})
      : _mine = mine,
        super._();

  factory _$BookRatingOverallModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookRatingOverallModelImplFromJson(json);

  @override
  @JsonKey(name: 'average')
  final double average;
  @override
  @JsonKey(name: 'rating_1_count')
  final int rating1Count;
  @override
  @JsonKey(name: 'rating_2_count')
  final int rating2Count;
  @override
  @JsonKey(name: 'rating_3_count')
  final int rating3Count;
  @override
  @JsonKey(name: 'rating_4_count')
  final int rating4Count;
  @override
  @JsonKey(name: 'rating_5_count')
  final int rating5Count;

  /// My rating as map, it has rating and comment key
  final Map<String, dynamic>? _mine;

  /// My rating as map, it has rating and comment key
  @override
  @JsonKey(name: 'mine')
  Map<String, dynamic>? get mine {
    final value = _mine;
    if (value == null) return null;
    if (_mine is EqualUnmodifiableMapView) return _mine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'BookRatingOverallModel(average: $average, rating1Count: $rating1Count, rating2Count: $rating2Count, rating3Count: $rating3Count, rating4Count: $rating4Count, rating5Count: $rating5Count, mine: $mine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRatingOverallModelImpl &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.rating1Count, rating1Count) ||
                other.rating1Count == rating1Count) &&
            (identical(other.rating2Count, rating2Count) ||
                other.rating2Count == rating2Count) &&
            (identical(other.rating3Count, rating3Count) ||
                other.rating3Count == rating3Count) &&
            (identical(other.rating4Count, rating4Count) ||
                other.rating4Count == rating4Count) &&
            (identical(other.rating5Count, rating5Count) ||
                other.rating5Count == rating5Count) &&
            const DeepCollectionEquality().equals(other._mine, _mine));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      average,
      rating1Count,
      rating2Count,
      rating3Count,
      rating4Count,
      rating5Count,
      const DeepCollectionEquality().hash(_mine));

  /// Create a copy of BookRatingOverallModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRatingOverallModelImplCopyWith<_$BookRatingOverallModelImpl>
      get copyWith => __$$BookRatingOverallModelImplCopyWithImpl<
          _$BookRatingOverallModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookRatingOverallModelImplToJson(
      this,
    );
  }
}

abstract class _BookRatingOverallModel extends BookRatingOverallModel {
  const factory _BookRatingOverallModel(
          {@JsonKey(name: 'average') required final double average,
          @JsonKey(name: 'rating_1_count') required final int rating1Count,
          @JsonKey(name: 'rating_2_count') required final int rating2Count,
          @JsonKey(name: 'rating_3_count') required final int rating3Count,
          @JsonKey(name: 'rating_4_count') required final int rating4Count,
          @JsonKey(name: 'rating_5_count') required final int rating5Count,
          @JsonKey(name: 'mine') required final Map<String, dynamic>? mine}) =
      _$BookRatingOverallModelImpl;
  const _BookRatingOverallModel._() : super._();

  factory _BookRatingOverallModel.fromJson(Map<String, dynamic> json) =
      _$BookRatingOverallModelImpl.fromJson;

  @override
  @JsonKey(name: 'average')
  double get average;
  @override
  @JsonKey(name: 'rating_1_count')
  int get rating1Count;
  @override
  @JsonKey(name: 'rating_2_count')
  int get rating2Count;
  @override
  @JsonKey(name: 'rating_3_count')
  int get rating3Count;
  @override
  @JsonKey(name: 'rating_4_count')
  int get rating4Count;
  @override
  @JsonKey(name: 'rating_5_count')
  int get rating5Count;

  /// My rating as map, it has rating and comment key
  @override
  @JsonKey(name: 'mine')
  Map<String, dynamic>? get mine;

  /// Create a copy of BookRatingOverallModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRatingOverallModelImplCopyWith<_$BookRatingOverallModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
