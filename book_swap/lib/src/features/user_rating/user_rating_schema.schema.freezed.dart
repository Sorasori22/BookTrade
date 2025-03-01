// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_rating_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRatingModel _$UserRatingModelFromJson(Map<String, dynamic> json) {
  return _UserRatingModel.fromJson(json);
}

/// @nodoc
mixin _$UserRatingModel {
  @JsonKey(name: UserRatingModel.idKey)
  UserRatingId get id => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingModel.raterIdKey)
  ProfileId get raterId => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingModel.ratedUserIdKey)
  ProfileId get ratedUserId => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingModel.tradeRequestIdKey)
  int? get tradeRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingModel.ratingKey)
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingModel.commentKey)
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
  @JsonKey(name: UserRatingModel.raterKey)
  ProfileLiteModel get rater => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
  @JsonKey(name: UserRatingModel.ratedUserKey)
  ProfileLiteModel get ratedUser => throw _privateConstructorUsedError;

  /// Serializes this UserRatingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRatingModelCopyWith<UserRatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRatingModelCopyWith<$Res> {
  factory $UserRatingModelCopyWith(
          UserRatingModel value, $Res Function(UserRatingModel) then) =
      _$UserRatingModelCopyWithImpl<$Res, UserRatingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: UserRatingModel.idKey) UserRatingId id,
      @JsonKey(name: UserRatingModel.raterIdKey) ProfileId raterId,
      @JsonKey(name: UserRatingModel.ratedUserIdKey) ProfileId ratedUserId,
      @JsonKey(name: UserRatingModel.tradeRequestIdKey) int? tradeRequestId,
      @JsonKey(name: UserRatingModel.ratingKey) int rating,
      @JsonKey(name: UserRatingModel.commentKey) String? comment,
      @JsonKey(name: UserRatingModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
      @JsonKey(name: UserRatingModel.raterKey)
      ProfileLiteModel rater,
      @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
      @JsonKey(name: UserRatingModel.ratedUserKey)
      ProfileLiteModel ratedUser});

  $ProfileLiteModelCopyWith<$Res> get rater;
  $ProfileLiteModelCopyWith<$Res> get ratedUser;
}

/// @nodoc
class _$UserRatingModelCopyWithImpl<$Res, $Val extends UserRatingModel>
    implements $UserRatingModelCopyWith<$Res> {
  _$UserRatingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? raterId = null,
    Object? ratedUserId = null,
    Object? tradeRequestId = freezed,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? rater = null,
    Object? ratedUser = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserRatingId,
      raterId: null == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ratedUserId: null == ratedUserId
          ? _value.ratedUserId
          : ratedUserId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rater: null == rater
          ? _value.rater
          : rater // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      ratedUser: null == ratedUser
          ? _value.ratedUser
          : ratedUser // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ) as $Val);
  }

  /// Create a copy of UserRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get rater {
    return $ProfileLiteModelCopyWith<$Res>(_value.rater, (value) {
      return _then(_value.copyWith(rater: value) as $Val);
    });
  }

  /// Create a copy of UserRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get ratedUser {
    return $ProfileLiteModelCopyWith<$Res>(_value.ratedUser, (value) {
      return _then(_value.copyWith(ratedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRatingModelImplCopyWith<$Res>
    implements $UserRatingModelCopyWith<$Res> {
  factory _$$UserRatingModelImplCopyWith(_$UserRatingModelImpl value,
          $Res Function(_$UserRatingModelImpl) then) =
      __$$UserRatingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserRatingModel.idKey) UserRatingId id,
      @JsonKey(name: UserRatingModel.raterIdKey) ProfileId raterId,
      @JsonKey(name: UserRatingModel.ratedUserIdKey) ProfileId ratedUserId,
      @JsonKey(name: UserRatingModel.tradeRequestIdKey) int? tradeRequestId,
      @JsonKey(name: UserRatingModel.ratingKey) int rating,
      @JsonKey(name: UserRatingModel.commentKey) String? comment,
      @JsonKey(name: UserRatingModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
      @JsonKey(name: UserRatingModel.raterKey)
      ProfileLiteModel rater,
      @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
      @JsonKey(name: UserRatingModel.ratedUserKey)
      ProfileLiteModel ratedUser});

  @override
  $ProfileLiteModelCopyWith<$Res> get rater;
  @override
  $ProfileLiteModelCopyWith<$Res> get ratedUser;
}

/// @nodoc
class __$$UserRatingModelImplCopyWithImpl<$Res>
    extends _$UserRatingModelCopyWithImpl<$Res, _$UserRatingModelImpl>
    implements _$$UserRatingModelImplCopyWith<$Res> {
  __$$UserRatingModelImplCopyWithImpl(
      _$UserRatingModelImpl _value, $Res Function(_$UserRatingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? raterId = null,
    Object? ratedUserId = null,
    Object? tradeRequestId = freezed,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? rater = null,
    Object? ratedUser = null,
  }) {
    return _then(_$UserRatingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserRatingId,
      raterId: null == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ratedUserId: null == ratedUserId
          ? _value.ratedUserId
          : ratedUserId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rater: null == rater
          ? _value.rater
          : rater // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      ratedUser: null == ratedUser
          ? _value.ratedUser
          : ratedUser // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ));
  }
}

/// @nodoc

@TableModel(UserRatingModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$UserRatingModelImpl extends _UserRatingModel {
  const _$UserRatingModelImpl(
      {@JsonKey(name: UserRatingModel.idKey) required this.id,
      @JsonKey(name: UserRatingModel.raterIdKey) required this.raterId,
      @JsonKey(name: UserRatingModel.ratedUserIdKey) required this.ratedUserId,
      @JsonKey(name: UserRatingModel.tradeRequestIdKey)
      required this.tradeRequestId,
      @JsonKey(name: UserRatingModel.ratingKey) required this.rating,
      @JsonKey(name: UserRatingModel.commentKey) required this.comment,
      @JsonKey(name: UserRatingModel.createdAtKey) required this.createdAt,
      @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
      @JsonKey(name: UserRatingModel.raterKey)
      required this.rater,
      @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
      @JsonKey(name: UserRatingModel.ratedUserKey)
      required this.ratedUser})
      : super._();

  factory _$UserRatingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRatingModelImplFromJson(json);

  @override
  @JsonKey(name: UserRatingModel.idKey)
  final UserRatingId id;
  @override
  @JsonKey(name: UserRatingModel.raterIdKey)
  final ProfileId raterId;
  @override
  @JsonKey(name: UserRatingModel.ratedUserIdKey)
  final ProfileId ratedUserId;
  @override
  @JsonKey(name: UserRatingModel.tradeRequestIdKey)
  final int? tradeRequestId;
  @override
  @JsonKey(name: UserRatingModel.ratingKey)
  final int rating;
  @override
  @JsonKey(name: UserRatingModel.commentKey)
  final String? comment;
  @override
  @JsonKey(name: UserRatingModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
  @JsonKey(name: UserRatingModel.raterKey)
  final ProfileLiteModel rater;
  @override
  @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
  @JsonKey(name: UserRatingModel.ratedUserKey)
  final ProfileLiteModel ratedUser;

  @override
  String toString() {
    return 'UserRatingModel(id: $id, raterId: $raterId, ratedUserId: $ratedUserId, tradeRequestId: $tradeRequestId, rating: $rating, comment: $comment, createdAt: $createdAt, rater: $rater, ratedUser: $ratedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRatingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.raterId, raterId) || other.raterId == raterId) &&
            (identical(other.ratedUserId, ratedUserId) ||
                other.ratedUserId == ratedUserId) &&
            (identical(other.tradeRequestId, tradeRequestId) ||
                other.tradeRequestId == tradeRequestId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.rater, rater) || other.rater == rater) &&
            (identical(other.ratedUser, ratedUser) ||
                other.ratedUser == ratedUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, raterId, ratedUserId,
      tradeRequestId, rating, comment, createdAt, rater, ratedUser);

  /// Create a copy of UserRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRatingModelImplCopyWith<_$UserRatingModelImpl> get copyWith =>
      __$$UserRatingModelImplCopyWithImpl<_$UserRatingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRatingModelImplToJson(
      this,
    );
  }
}

abstract class _UserRatingModel extends UserRatingModel {
  const factory _UserRatingModel(
      {@JsonKey(name: UserRatingModel.idKey) required final UserRatingId id,
      @JsonKey(name: UserRatingModel.raterIdKey)
      required final ProfileId raterId,
      @JsonKey(name: UserRatingModel.ratedUserIdKey)
      required final ProfileId ratedUserId,
      @JsonKey(name: UserRatingModel.tradeRequestIdKey)
      required final int? tradeRequestId,
      @JsonKey(name: UserRatingModel.ratingKey) required final int rating,
      @JsonKey(name: UserRatingModel.commentKey) required final String? comment,
      @JsonKey(name: UserRatingModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
      @JsonKey(name: UserRatingModel.raterKey)
      required final ProfileLiteModel rater,
      @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
      @JsonKey(name: UserRatingModel.ratedUserKey)
      required final ProfileLiteModel ratedUser}) = _$UserRatingModelImpl;
  const _UserRatingModel._() : super._();

  factory _UserRatingModel.fromJson(Map<String, dynamic> json) =
      _$UserRatingModelImpl.fromJson;

  @override
  @JsonKey(name: UserRatingModel.idKey)
  UserRatingId get id;
  @override
  @JsonKey(name: UserRatingModel.raterIdKey)
  ProfileId get raterId;
  @override
  @JsonKey(name: UserRatingModel.ratedUserIdKey)
  ProfileId get ratedUserId;
  @override
  @JsonKey(name: UserRatingModel.tradeRequestIdKey)
  int? get tradeRequestId;
  @override
  @JsonKey(name: UserRatingModel.ratingKey)
  int get rating;
  @override
  @JsonKey(name: UserRatingModel.commentKey)
  String? get comment;
  @override
  @JsonKey(name: UserRatingModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
  @JsonKey(name: UserRatingModel.raterKey)
  ProfileLiteModel get rater;
  @override
  @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
  @JsonKey(name: UserRatingModel.ratedUserKey)
  ProfileLiteModel get ratedUser;

  /// Create a copy of UserRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRatingModelImplCopyWith<_$UserRatingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRatingLiteModel _$UserRatingLiteModelFromJson(Map<String, dynamic> json) {
  return _UserRatingLiteModel.fromJson(json);
}

/// @nodoc
mixin _$UserRatingLiteModel {
  @JsonKey(name: UserRatingLiteModel.idKey)
  UserRatingId get id => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingLiteModel.raterIdKey)
  ProfileId get raterId => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingLiteModel.ratedUserIdKey)
  ProfileId get ratedUserId => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingLiteModel.ratingKey)
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingLiteModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this UserRatingLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRatingLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRatingLiteModelCopyWith<UserRatingLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRatingLiteModelCopyWith<$Res> {
  factory $UserRatingLiteModelCopyWith(
          UserRatingLiteModel value, $Res Function(UserRatingLiteModel) then) =
      _$UserRatingLiteModelCopyWithImpl<$Res, UserRatingLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: UserRatingLiteModel.idKey) UserRatingId id,
      @JsonKey(name: UserRatingLiteModel.raterIdKey) ProfileId raterId,
      @JsonKey(name: UserRatingLiteModel.ratedUserIdKey) ProfileId ratedUserId,
      @JsonKey(name: UserRatingLiteModel.ratingKey) int rating,
      @JsonKey(name: UserRatingLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class _$UserRatingLiteModelCopyWithImpl<$Res, $Val extends UserRatingLiteModel>
    implements $UserRatingLiteModelCopyWith<$Res> {
  _$UserRatingLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRatingLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? raterId = null,
    Object? ratedUserId = null,
    Object? rating = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserRatingId,
      raterId: null == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ratedUserId: null == ratedUserId
          ? _value.ratedUserId
          : ratedUserId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRatingLiteModelImplCopyWith<$Res>
    implements $UserRatingLiteModelCopyWith<$Res> {
  factory _$$UserRatingLiteModelImplCopyWith(_$UserRatingLiteModelImpl value,
          $Res Function(_$UserRatingLiteModelImpl) then) =
      __$$UserRatingLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserRatingLiteModel.idKey) UserRatingId id,
      @JsonKey(name: UserRatingLiteModel.raterIdKey) ProfileId raterId,
      @JsonKey(name: UserRatingLiteModel.ratedUserIdKey) ProfileId ratedUserId,
      @JsonKey(name: UserRatingLiteModel.ratingKey) int rating,
      @JsonKey(name: UserRatingLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class __$$UserRatingLiteModelImplCopyWithImpl<$Res>
    extends _$UserRatingLiteModelCopyWithImpl<$Res, _$UserRatingLiteModelImpl>
    implements _$$UserRatingLiteModelImplCopyWith<$Res> {
  __$$UserRatingLiteModelImplCopyWithImpl(_$UserRatingLiteModelImpl _value,
      $Res Function(_$UserRatingLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRatingLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? raterId = null,
    Object? ratedUserId = null,
    Object? rating = null,
    Object? createdAt = null,
  }) {
    return _then(_$UserRatingLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserRatingId,
      raterId: null == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ratedUserId: null == ratedUserId
          ? _value.ratedUserId
          : ratedUserId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(UserRatingLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$UserRatingLiteModelImpl extends _UserRatingLiteModel {
  const _$UserRatingLiteModelImpl(
      {@JsonKey(name: UserRatingLiteModel.idKey) required this.id,
      @JsonKey(name: UserRatingLiteModel.raterIdKey) required this.raterId,
      @JsonKey(name: UserRatingLiteModel.ratedUserIdKey)
      required this.ratedUserId,
      @JsonKey(name: UserRatingLiteModel.ratingKey) required this.rating,
      @JsonKey(name: UserRatingLiteModel.createdAtKey) required this.createdAt})
      : super._();

  factory _$UserRatingLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRatingLiteModelImplFromJson(json);

  @override
  @JsonKey(name: UserRatingLiteModel.idKey)
  final UserRatingId id;
  @override
  @JsonKey(name: UserRatingLiteModel.raterIdKey)
  final ProfileId raterId;
  @override
  @JsonKey(name: UserRatingLiteModel.ratedUserIdKey)
  final ProfileId ratedUserId;
  @override
  @JsonKey(name: UserRatingLiteModel.ratingKey)
  final int rating;
  @override
  @JsonKey(name: UserRatingLiteModel.createdAtKey)
  final DateTime createdAt;

  @override
  String toString() {
    return 'UserRatingLiteModel(id: $id, raterId: $raterId, ratedUserId: $ratedUserId, rating: $rating, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRatingLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.raterId, raterId) || other.raterId == raterId) &&
            (identical(other.ratedUserId, ratedUserId) ||
                other.ratedUserId == ratedUserId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, raterId, ratedUserId, rating, createdAt);

  /// Create a copy of UserRatingLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRatingLiteModelImplCopyWith<_$UserRatingLiteModelImpl> get copyWith =>
      __$$UserRatingLiteModelImplCopyWithImpl<_$UserRatingLiteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRatingLiteModelImplToJson(
      this,
    );
  }
}

abstract class _UserRatingLiteModel extends UserRatingLiteModel {
  const factory _UserRatingLiteModel(
      {@JsonKey(name: UserRatingLiteModel.idKey) required final UserRatingId id,
      @JsonKey(name: UserRatingLiteModel.raterIdKey)
      required final ProfileId raterId,
      @JsonKey(name: UserRatingLiteModel.ratedUserIdKey)
      required final ProfileId ratedUserId,
      @JsonKey(name: UserRatingLiteModel.ratingKey) required final int rating,
      @JsonKey(name: UserRatingLiteModel.createdAtKey)
      required final DateTime createdAt}) = _$UserRatingLiteModelImpl;
  const _UserRatingLiteModel._() : super._();

  factory _UserRatingLiteModel.fromJson(Map<String, dynamic> json) =
      _$UserRatingLiteModelImpl.fromJson;

  @override
  @JsonKey(name: UserRatingLiteModel.idKey)
  UserRatingId get id;
  @override
  @JsonKey(name: UserRatingLiteModel.raterIdKey)
  ProfileId get raterId;
  @override
  @JsonKey(name: UserRatingLiteModel.ratedUserIdKey)
  ProfileId get ratedUserId;
  @override
  @JsonKey(name: UserRatingLiteModel.ratingKey)
  int get rating;
  @override
  @JsonKey(name: UserRatingLiteModel.createdAtKey)
  DateTime get createdAt;

  /// Create a copy of UserRatingLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRatingLiteModelImplCopyWith<_$UserRatingLiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRatingDetailModel _$UserRatingDetailModelFromJson(
    Map<String, dynamic> json) {
  return _UserRatingDetailModel.fromJson(json);
}

/// @nodoc
mixin _$UserRatingDetailModel {
  @JsonKey(name: UserRatingDetailModel.idKey)
  UserRatingId get id => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingDetailModel.raterIdKey)
  ProfileId get raterId => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingDetailModel.ratedUserIdKey)
  ProfileId get ratedUserId => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingDetailModel.tradeRequestIdKey)
  int? get tradeRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingDetailModel.ratingKey)
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingDetailModel.commentKey)
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingDetailModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
  @JsonKey(name: UserRatingDetailModel.raterKey)
  ProfileLiteModel get rater => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
  @JsonKey(name: UserRatingDetailModel.ratedUserKey)
  ProfileLiteModel get ratedUser => throw _privateConstructorUsedError;

  /// Serializes this UserRatingDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRatingDetailModelCopyWith<UserRatingDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRatingDetailModelCopyWith<$Res> {
  factory $UserRatingDetailModelCopyWith(UserRatingDetailModel value,
          $Res Function(UserRatingDetailModel) then) =
      _$UserRatingDetailModelCopyWithImpl<$Res, UserRatingDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: UserRatingDetailModel.idKey) UserRatingId id,
      @JsonKey(name: UserRatingDetailModel.raterIdKey) ProfileId raterId,
      @JsonKey(name: UserRatingDetailModel.ratedUserIdKey)
      ProfileId ratedUserId,
      @JsonKey(name: UserRatingDetailModel.tradeRequestIdKey)
      int? tradeRequestId,
      @JsonKey(name: UserRatingDetailModel.ratingKey) int rating,
      @JsonKey(name: UserRatingDetailModel.commentKey) String? comment,
      @JsonKey(name: UserRatingDetailModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
      @JsonKey(name: UserRatingDetailModel.raterKey)
      ProfileLiteModel rater,
      @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
      @JsonKey(name: UserRatingDetailModel.ratedUserKey)
      ProfileLiteModel ratedUser});

  $ProfileLiteModelCopyWith<$Res> get rater;
  $ProfileLiteModelCopyWith<$Res> get ratedUser;
}

/// @nodoc
class _$UserRatingDetailModelCopyWithImpl<$Res,
        $Val extends UserRatingDetailModel>
    implements $UserRatingDetailModelCopyWith<$Res> {
  _$UserRatingDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? raterId = null,
    Object? ratedUserId = null,
    Object? tradeRequestId = freezed,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? rater = null,
    Object? ratedUser = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserRatingId,
      raterId: null == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ratedUserId: null == ratedUserId
          ? _value.ratedUserId
          : ratedUserId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rater: null == rater
          ? _value.rater
          : rater // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      ratedUser: null == ratedUser
          ? _value.ratedUser
          : ratedUser // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ) as $Val);
  }

  /// Create a copy of UserRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get rater {
    return $ProfileLiteModelCopyWith<$Res>(_value.rater, (value) {
      return _then(_value.copyWith(rater: value) as $Val);
    });
  }

  /// Create a copy of UserRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get ratedUser {
    return $ProfileLiteModelCopyWith<$Res>(_value.ratedUser, (value) {
      return _then(_value.copyWith(ratedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRatingDetailModelImplCopyWith<$Res>
    implements $UserRatingDetailModelCopyWith<$Res> {
  factory _$$UserRatingDetailModelImplCopyWith(
          _$UserRatingDetailModelImpl value,
          $Res Function(_$UserRatingDetailModelImpl) then) =
      __$$UserRatingDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserRatingDetailModel.idKey) UserRatingId id,
      @JsonKey(name: UserRatingDetailModel.raterIdKey) ProfileId raterId,
      @JsonKey(name: UserRatingDetailModel.ratedUserIdKey)
      ProfileId ratedUserId,
      @JsonKey(name: UserRatingDetailModel.tradeRequestIdKey)
      int? tradeRequestId,
      @JsonKey(name: UserRatingDetailModel.ratingKey) int rating,
      @JsonKey(name: UserRatingDetailModel.commentKey) String? comment,
      @JsonKey(name: UserRatingDetailModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
      @JsonKey(name: UserRatingDetailModel.raterKey)
      ProfileLiteModel rater,
      @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
      @JsonKey(name: UserRatingDetailModel.ratedUserKey)
      ProfileLiteModel ratedUser});

  @override
  $ProfileLiteModelCopyWith<$Res> get rater;
  @override
  $ProfileLiteModelCopyWith<$Res> get ratedUser;
}

/// @nodoc
class __$$UserRatingDetailModelImplCopyWithImpl<$Res>
    extends _$UserRatingDetailModelCopyWithImpl<$Res,
        _$UserRatingDetailModelImpl>
    implements _$$UserRatingDetailModelImplCopyWith<$Res> {
  __$$UserRatingDetailModelImplCopyWithImpl(_$UserRatingDetailModelImpl _value,
      $Res Function(_$UserRatingDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? raterId = null,
    Object? ratedUserId = null,
    Object? tradeRequestId = freezed,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? rater = null,
    Object? ratedUser = null,
  }) {
    return _then(_$UserRatingDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserRatingId,
      raterId: null == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ratedUserId: null == ratedUserId
          ? _value.ratedUserId
          : ratedUserId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rater: null == rater
          ? _value.rater
          : rater // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      ratedUser: null == ratedUser
          ? _value.ratedUser
          : ratedUser // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ));
  }
}

/// @nodoc

@TableModel(UserRatingDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$UserRatingDetailModelImpl extends _UserRatingDetailModel {
  const _$UserRatingDetailModelImpl(
      {@JsonKey(name: UserRatingDetailModel.idKey) required this.id,
      @JsonKey(name: UserRatingDetailModel.raterIdKey) required this.raterId,
      @JsonKey(name: UserRatingDetailModel.ratedUserIdKey)
      required this.ratedUserId,
      @JsonKey(name: UserRatingDetailModel.tradeRequestIdKey)
      required this.tradeRequestId,
      @JsonKey(name: UserRatingDetailModel.ratingKey) required this.rating,
      @JsonKey(name: UserRatingDetailModel.commentKey) required this.comment,
      @JsonKey(name: UserRatingDetailModel.createdAtKey)
      required this.createdAt,
      @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
      @JsonKey(name: UserRatingDetailModel.raterKey)
      required this.rater,
      @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
      @JsonKey(name: UserRatingDetailModel.ratedUserKey)
      required this.ratedUser})
      : super._();

  factory _$UserRatingDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRatingDetailModelImplFromJson(json);

  @override
  @JsonKey(name: UserRatingDetailModel.idKey)
  final UserRatingId id;
  @override
  @JsonKey(name: UserRatingDetailModel.raterIdKey)
  final ProfileId raterId;
  @override
  @JsonKey(name: UserRatingDetailModel.ratedUserIdKey)
  final ProfileId ratedUserId;
  @override
  @JsonKey(name: UserRatingDetailModel.tradeRequestIdKey)
  final int? tradeRequestId;
  @override
  @JsonKey(name: UserRatingDetailModel.ratingKey)
  final int rating;
  @override
  @JsonKey(name: UserRatingDetailModel.commentKey)
  final String? comment;
  @override
  @JsonKey(name: UserRatingDetailModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
  @JsonKey(name: UserRatingDetailModel.raterKey)
  final ProfileLiteModel rater;
  @override
  @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
  @JsonKey(name: UserRatingDetailModel.ratedUserKey)
  final ProfileLiteModel ratedUser;

  @override
  String toString() {
    return 'UserRatingDetailModel(id: $id, raterId: $raterId, ratedUserId: $ratedUserId, tradeRequestId: $tradeRequestId, rating: $rating, comment: $comment, createdAt: $createdAt, rater: $rater, ratedUser: $ratedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRatingDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.raterId, raterId) || other.raterId == raterId) &&
            (identical(other.ratedUserId, ratedUserId) ||
                other.ratedUserId == ratedUserId) &&
            (identical(other.tradeRequestId, tradeRequestId) ||
                other.tradeRequestId == tradeRequestId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.rater, rater) || other.rater == rater) &&
            (identical(other.ratedUser, ratedUser) ||
                other.ratedUser == ratedUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, raterId, ratedUserId,
      tradeRequestId, rating, comment, createdAt, rater, ratedUser);

  /// Create a copy of UserRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRatingDetailModelImplCopyWith<_$UserRatingDetailModelImpl>
      get copyWith => __$$UserRatingDetailModelImplCopyWithImpl<
          _$UserRatingDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRatingDetailModelImplToJson(
      this,
    );
  }
}

abstract class _UserRatingDetailModel extends UserRatingDetailModel {
  const factory _UserRatingDetailModel(
      {@JsonKey(name: UserRatingDetailModel.idKey)
      required final UserRatingId id,
      @JsonKey(name: UserRatingDetailModel.raterIdKey)
      required final ProfileId raterId,
      @JsonKey(name: UserRatingDetailModel.ratedUserIdKey)
      required final ProfileId ratedUserId,
      @JsonKey(name: UserRatingDetailModel.tradeRequestIdKey)
      required final int? tradeRequestId,
      @JsonKey(name: UserRatingDetailModel.ratingKey) required final int rating,
      @JsonKey(name: UserRatingDetailModel.commentKey)
      required final String? comment,
      @JsonKey(name: UserRatingDetailModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
      @JsonKey(name: UserRatingDetailModel.raterKey)
      required final ProfileLiteModel rater,
      @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
      @JsonKey(name: UserRatingDetailModel.ratedUserKey)
      required final ProfileLiteModel ratedUser}) = _$UserRatingDetailModelImpl;
  const _UserRatingDetailModel._() : super._();

  factory _UserRatingDetailModel.fromJson(Map<String, dynamic> json) =
      _$UserRatingDetailModelImpl.fromJson;

  @override
  @JsonKey(name: UserRatingDetailModel.idKey)
  UserRatingId get id;
  @override
  @JsonKey(name: UserRatingDetailModel.raterIdKey)
  ProfileId get raterId;
  @override
  @JsonKey(name: UserRatingDetailModel.ratedUserIdKey)
  ProfileId get ratedUserId;
  @override
  @JsonKey(name: UserRatingDetailModel.tradeRequestIdKey)
  int? get tradeRequestId;
  @override
  @JsonKey(name: UserRatingDetailModel.ratingKey)
  int get rating;
  @override
  @JsonKey(name: UserRatingDetailModel.commentKey)
  String? get comment;
  @override
  @JsonKey(name: UserRatingDetailModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "rater_id", candidateKey: "id")
  @JsonKey(name: UserRatingDetailModel.raterKey)
  ProfileLiteModel get rater;
  @override
  @JoinedColumn(foreignKey: "rated_user_id", candidateKey: "id")
  @JsonKey(name: UserRatingDetailModel.ratedUserKey)
  ProfileLiteModel get ratedUser;

  /// Create a copy of UserRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRatingDetailModelImplCopyWith<_$UserRatingDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserRatingCreateParam _$UserRatingCreateParamFromJson(
    Map<String, dynamic> json) {
  return _UserRatingCreateParam.fromJson(json);
}

/// @nodoc
mixin _$UserRatingCreateParam {
  @JsonKey(name: UserRatingCreateParam.raterIdKey)
  ProfileId get raterId => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingCreateParam.ratedUserIdKey)
  ProfileId get ratedUserId => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingCreateParam.tradeRequestIdKey)
  int? get tradeRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingCreateParam.ratingKey)
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingCreateParam.commentKey)
  String? get comment => throw _privateConstructorUsedError;

  /// Serializes this UserRatingCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRatingCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRatingCreateParamCopyWith<UserRatingCreateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRatingCreateParamCopyWith<$Res> {
  factory $UserRatingCreateParamCopyWith(UserRatingCreateParam value,
          $Res Function(UserRatingCreateParam) then) =
      _$UserRatingCreateParamCopyWithImpl<$Res, UserRatingCreateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: UserRatingCreateParam.raterIdKey) ProfileId raterId,
      @JsonKey(name: UserRatingCreateParam.ratedUserIdKey)
      ProfileId ratedUserId,
      @JsonKey(name: UserRatingCreateParam.tradeRequestIdKey)
      int? tradeRequestId,
      @JsonKey(name: UserRatingCreateParam.ratingKey) int rating,
      @JsonKey(name: UserRatingCreateParam.commentKey) String? comment});
}

/// @nodoc
class _$UserRatingCreateParamCopyWithImpl<$Res,
        $Val extends UserRatingCreateParam>
    implements $UserRatingCreateParamCopyWith<$Res> {
  _$UserRatingCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRatingCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raterId = null,
    Object? ratedUserId = null,
    Object? tradeRequestId = freezed,
    Object? rating = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      raterId: null == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ratedUserId: null == ratedUserId
          ? _value.ratedUserId
          : ratedUserId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRatingCreateParamImplCopyWith<$Res>
    implements $UserRatingCreateParamCopyWith<$Res> {
  factory _$$UserRatingCreateParamImplCopyWith(
          _$UserRatingCreateParamImpl value,
          $Res Function(_$UserRatingCreateParamImpl) then) =
      __$$UserRatingCreateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserRatingCreateParam.raterIdKey) ProfileId raterId,
      @JsonKey(name: UserRatingCreateParam.ratedUserIdKey)
      ProfileId ratedUserId,
      @JsonKey(name: UserRatingCreateParam.tradeRequestIdKey)
      int? tradeRequestId,
      @JsonKey(name: UserRatingCreateParam.ratingKey) int rating,
      @JsonKey(name: UserRatingCreateParam.commentKey) String? comment});
}

/// @nodoc
class __$$UserRatingCreateParamImplCopyWithImpl<$Res>
    extends _$UserRatingCreateParamCopyWithImpl<$Res,
        _$UserRatingCreateParamImpl>
    implements _$$UserRatingCreateParamImplCopyWith<$Res> {
  __$$UserRatingCreateParamImplCopyWithImpl(_$UserRatingCreateParamImpl _value,
      $Res Function(_$UserRatingCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRatingCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raterId = null,
    Object? ratedUserId = null,
    Object? tradeRequestId = freezed,
    Object? rating = null,
    Object? comment = freezed,
  }) {
    return _then(_$UserRatingCreateParamImpl(
      raterId: null == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ratedUserId: null == ratedUserId
          ? _value.ratedUserId
          : ratedUserId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserRatingCreateParamImpl extends _UserRatingCreateParam {
  const _$UserRatingCreateParamImpl(
      {@JsonKey(name: UserRatingCreateParam.raterIdKey) required this.raterId,
      @JsonKey(name: UserRatingCreateParam.ratedUserIdKey)
      required this.ratedUserId,
      @JsonKey(name: UserRatingCreateParam.tradeRequestIdKey)
      required this.tradeRequestId,
      @JsonKey(name: UserRatingCreateParam.ratingKey) required this.rating,
      @JsonKey(name: UserRatingCreateParam.commentKey) required this.comment})
      : super._();

  factory _$UserRatingCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRatingCreateParamImplFromJson(json);

  @override
  @JsonKey(name: UserRatingCreateParam.raterIdKey)
  final ProfileId raterId;
  @override
  @JsonKey(name: UserRatingCreateParam.ratedUserIdKey)
  final ProfileId ratedUserId;
  @override
  @JsonKey(name: UserRatingCreateParam.tradeRequestIdKey)
  final int? tradeRequestId;
  @override
  @JsonKey(name: UserRatingCreateParam.ratingKey)
  final int rating;
  @override
  @JsonKey(name: UserRatingCreateParam.commentKey)
  final String? comment;

  @override
  String toString() {
    return 'UserRatingCreateParam(raterId: $raterId, ratedUserId: $ratedUserId, tradeRequestId: $tradeRequestId, rating: $rating, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRatingCreateParamImpl &&
            (identical(other.raterId, raterId) || other.raterId == raterId) &&
            (identical(other.ratedUserId, ratedUserId) ||
                other.ratedUserId == ratedUserId) &&
            (identical(other.tradeRequestId, tradeRequestId) ||
                other.tradeRequestId == tradeRequestId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, raterId, ratedUserId, tradeRequestId, rating, comment);

  /// Create a copy of UserRatingCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRatingCreateParamImplCopyWith<_$UserRatingCreateParamImpl>
      get copyWith => __$$UserRatingCreateParamImplCopyWithImpl<
          _$UserRatingCreateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRatingCreateParamImplToJson(
      this,
    );
  }
}

abstract class _UserRatingCreateParam extends UserRatingCreateParam {
  const factory _UserRatingCreateParam(
      {@JsonKey(name: UserRatingCreateParam.raterIdKey)
      required final ProfileId raterId,
      @JsonKey(name: UserRatingCreateParam.ratedUserIdKey)
      required final ProfileId ratedUserId,
      @JsonKey(name: UserRatingCreateParam.tradeRequestIdKey)
      required final int? tradeRequestId,
      @JsonKey(name: UserRatingCreateParam.ratingKey) required final int rating,
      @JsonKey(name: UserRatingCreateParam.commentKey)
      required final String? comment}) = _$UserRatingCreateParamImpl;
  const _UserRatingCreateParam._() : super._();

  factory _UserRatingCreateParam.fromJson(Map<String, dynamic> json) =
      _$UserRatingCreateParamImpl.fromJson;

  @override
  @JsonKey(name: UserRatingCreateParam.raterIdKey)
  ProfileId get raterId;
  @override
  @JsonKey(name: UserRatingCreateParam.ratedUserIdKey)
  ProfileId get ratedUserId;
  @override
  @JsonKey(name: UserRatingCreateParam.tradeRequestIdKey)
  int? get tradeRequestId;
  @override
  @JsonKey(name: UserRatingCreateParam.ratingKey)
  int get rating;
  @override
  @JsonKey(name: UserRatingCreateParam.commentKey)
  String? get comment;

  /// Create a copy of UserRatingCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRatingCreateParamImplCopyWith<_$UserRatingCreateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserRatingUpdateParam _$UserRatingUpdateParamFromJson(
    Map<String, dynamic> json) {
  return _UserRatingUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$UserRatingUpdateParam {
  @JsonKey(name: UserRatingUpdateParam.ratingKey)
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: UserRatingUpdateParam.commentKey)
  String? get comment => throw _privateConstructorUsedError;

  /// Serializes this UserRatingUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRatingUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRatingUpdateParamCopyWith<UserRatingUpdateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRatingUpdateParamCopyWith<$Res> {
  factory $UserRatingUpdateParamCopyWith(UserRatingUpdateParam value,
          $Res Function(UserRatingUpdateParam) then) =
      _$UserRatingUpdateParamCopyWithImpl<$Res, UserRatingUpdateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: UserRatingUpdateParam.ratingKey) int? rating,
      @JsonKey(name: UserRatingUpdateParam.commentKey) String? comment});
}

/// @nodoc
class _$UserRatingUpdateParamCopyWithImpl<$Res,
        $Val extends UserRatingUpdateParam>
    implements $UserRatingUpdateParamCopyWith<$Res> {
  _$UserRatingUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRatingUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRatingUpdateParamImplCopyWith<$Res>
    implements $UserRatingUpdateParamCopyWith<$Res> {
  factory _$$UserRatingUpdateParamImplCopyWith(
          _$UserRatingUpdateParamImpl value,
          $Res Function(_$UserRatingUpdateParamImpl) then) =
      __$$UserRatingUpdateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserRatingUpdateParam.ratingKey) int? rating,
      @JsonKey(name: UserRatingUpdateParam.commentKey) String? comment});
}

/// @nodoc
class __$$UserRatingUpdateParamImplCopyWithImpl<$Res>
    extends _$UserRatingUpdateParamCopyWithImpl<$Res,
        _$UserRatingUpdateParamImpl>
    implements _$$UserRatingUpdateParamImplCopyWith<$Res> {
  __$$UserRatingUpdateParamImplCopyWithImpl(_$UserRatingUpdateParamImpl _value,
      $Res Function(_$UserRatingUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRatingUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$UserRatingUpdateParamImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserRatingUpdateParamImpl extends _UserRatingUpdateParam {
  const _$UserRatingUpdateParamImpl(
      {@JsonKey(name: UserRatingUpdateParam.ratingKey) required this.rating,
      @JsonKey(name: UserRatingUpdateParam.commentKey) required this.comment})
      : super._();

  factory _$UserRatingUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRatingUpdateParamImplFromJson(json);

  @override
  @JsonKey(name: UserRatingUpdateParam.ratingKey)
  final int? rating;
  @override
  @JsonKey(name: UserRatingUpdateParam.commentKey)
  final String? comment;

  @override
  String toString() {
    return 'UserRatingUpdateParam(rating: $rating, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRatingUpdateParamImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, comment);

  /// Create a copy of UserRatingUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRatingUpdateParamImplCopyWith<_$UserRatingUpdateParamImpl>
      get copyWith => __$$UserRatingUpdateParamImplCopyWithImpl<
          _$UserRatingUpdateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRatingUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _UserRatingUpdateParam extends UserRatingUpdateParam {
  const factory _UserRatingUpdateParam(
      {@JsonKey(name: UserRatingUpdateParam.ratingKey)
      required final int? rating,
      @JsonKey(name: UserRatingUpdateParam.commentKey)
      required final String? comment}) = _$UserRatingUpdateParamImpl;
  const _UserRatingUpdateParam._() : super._();

  factory _UserRatingUpdateParam.fromJson(Map<String, dynamic> json) =
      _$UserRatingUpdateParamImpl.fromJson;

  @override
  @JsonKey(name: UserRatingUpdateParam.ratingKey)
  int? get rating;
  @override
  @JsonKey(name: UserRatingUpdateParam.commentKey)
  String? get comment;

  /// Create a copy of UserRatingUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRatingUpdateParamImplCopyWith<_$UserRatingUpdateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
