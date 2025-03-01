// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_rating_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookRatingModel _$BookRatingModelFromJson(Map<String, dynamic> json) {
  return _BookRatingModel.fromJson(json);
}

/// @nodoc
mixin _$BookRatingModel {
  @JsonKey(name: BookRatingModel.idKey)
  BookRatingId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingModel.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingModel.bookIdKey)
  BookId get bookId => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingModel.ratingKey)
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingModel.commentKey)
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: BookRatingModel.userKey)
  ProfileLiteModel get user => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: BookRatingModel.bookKey)
  BookLiteModel get book => throw _privateConstructorUsedError;

  /// Serializes this BookRatingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRatingModelCopyWith<BookRatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRatingModelCopyWith<$Res> {
  factory $BookRatingModelCopyWith(
          BookRatingModel value, $Res Function(BookRatingModel) then) =
      _$BookRatingModelCopyWithImpl<$Res, BookRatingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BookRatingModel.idKey) BookRatingId id,
      @JsonKey(name: BookRatingModel.userIdKey) ProfileId userId,
      @JsonKey(name: BookRatingModel.bookIdKey) BookId bookId,
      @JsonKey(name: BookRatingModel.ratingKey) int rating,
      @JsonKey(name: BookRatingModel.commentKey) String? comment,
      @JsonKey(name: BookRatingModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: BookRatingModel.userKey)
      ProfileLiteModel user,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: BookRatingModel.bookKey)
      BookLiteModel book});

  $ProfileLiteModelCopyWith<$Res> get user;
  $BookLiteModelCopyWith<$Res> get book;
}

/// @nodoc
class _$BookRatingModelCopyWithImpl<$Res, $Val extends BookRatingModel>
    implements $BookRatingModelCopyWith<$Res> {
  _$BookRatingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? bookId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? user = null,
    Object? book = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookRatingId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
    ) as $Val);
  }

  /// Create a copy of BookRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get user {
    return $ProfileLiteModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of BookRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookLiteModelCopyWith<$Res> get book {
    return $BookLiteModelCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookRatingModelImplCopyWith<$Res>
    implements $BookRatingModelCopyWith<$Res> {
  factory _$$BookRatingModelImplCopyWith(_$BookRatingModelImpl value,
          $Res Function(_$BookRatingModelImpl) then) =
      __$$BookRatingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookRatingModel.idKey) BookRatingId id,
      @JsonKey(name: BookRatingModel.userIdKey) ProfileId userId,
      @JsonKey(name: BookRatingModel.bookIdKey) BookId bookId,
      @JsonKey(name: BookRatingModel.ratingKey) int rating,
      @JsonKey(name: BookRatingModel.commentKey) String? comment,
      @JsonKey(name: BookRatingModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: BookRatingModel.userKey)
      ProfileLiteModel user,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: BookRatingModel.bookKey)
      BookLiteModel book});

  @override
  $ProfileLiteModelCopyWith<$Res> get user;
  @override
  $BookLiteModelCopyWith<$Res> get book;
}

/// @nodoc
class __$$BookRatingModelImplCopyWithImpl<$Res>
    extends _$BookRatingModelCopyWithImpl<$Res, _$BookRatingModelImpl>
    implements _$$BookRatingModelImplCopyWith<$Res> {
  __$$BookRatingModelImplCopyWithImpl(
      _$BookRatingModelImpl _value, $Res Function(_$BookRatingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? bookId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? user = null,
    Object? book = null,
  }) {
    return _then(_$BookRatingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookRatingId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
    ));
  }
}

/// @nodoc

@TableModel(BookRatingModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$BookRatingModelImpl extends _BookRatingModel {
  const _$BookRatingModelImpl(
      {@JsonKey(name: BookRatingModel.idKey) required this.id,
      @JsonKey(name: BookRatingModel.userIdKey) required this.userId,
      @JsonKey(name: BookRatingModel.bookIdKey) required this.bookId,
      @JsonKey(name: BookRatingModel.ratingKey) required this.rating,
      @JsonKey(name: BookRatingModel.commentKey) required this.comment,
      @JsonKey(name: BookRatingModel.createdAtKey) required this.createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: BookRatingModel.userKey)
      required this.user,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: BookRatingModel.bookKey)
      required this.book})
      : super._();

  factory _$BookRatingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookRatingModelImplFromJson(json);

  @override
  @JsonKey(name: BookRatingModel.idKey)
  final BookRatingId id;
  @override
  @JsonKey(name: BookRatingModel.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: BookRatingModel.bookIdKey)
  final BookId bookId;
  @override
  @JsonKey(name: BookRatingModel.ratingKey)
  final int rating;
  @override
  @JsonKey(name: BookRatingModel.commentKey)
  final String? comment;
  @override
  @JsonKey(name: BookRatingModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: BookRatingModel.userKey)
  final ProfileLiteModel user;
  @override
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: BookRatingModel.bookKey)
  final BookLiteModel book;

  @override
  String toString() {
    return 'BookRatingModel(id: $id, userId: $userId, bookId: $bookId, rating: $rating, comment: $comment, createdAt: $createdAt, user: $user, book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRatingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.book, book) || other.book == book));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, bookId, rating, comment, createdAt, user, book);

  /// Create a copy of BookRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRatingModelImplCopyWith<_$BookRatingModelImpl> get copyWith =>
      __$$BookRatingModelImplCopyWithImpl<_$BookRatingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookRatingModelImplToJson(
      this,
    );
  }
}

abstract class _BookRatingModel extends BookRatingModel {
  const factory _BookRatingModel(
      {@JsonKey(name: BookRatingModel.idKey) required final BookRatingId id,
      @JsonKey(name: BookRatingModel.userIdKey) required final ProfileId userId,
      @JsonKey(name: BookRatingModel.bookIdKey) required final BookId bookId,
      @JsonKey(name: BookRatingModel.ratingKey) required final int rating,
      @JsonKey(name: BookRatingModel.commentKey) required final String? comment,
      @JsonKey(name: BookRatingModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: BookRatingModel.userKey)
      required final ProfileLiteModel user,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: BookRatingModel.bookKey)
      required final BookLiteModel book}) = _$BookRatingModelImpl;
  const _BookRatingModel._() : super._();

  factory _BookRatingModel.fromJson(Map<String, dynamic> json) =
      _$BookRatingModelImpl.fromJson;

  @override
  @JsonKey(name: BookRatingModel.idKey)
  BookRatingId get id;
  @override
  @JsonKey(name: BookRatingModel.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: BookRatingModel.bookIdKey)
  BookId get bookId;
  @override
  @JsonKey(name: BookRatingModel.ratingKey)
  int get rating;
  @override
  @JsonKey(name: BookRatingModel.commentKey)
  String? get comment;
  @override
  @JsonKey(name: BookRatingModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: BookRatingModel.userKey)
  ProfileLiteModel get user;
  @override
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: BookRatingModel.bookKey)
  BookLiteModel get book;

  /// Create a copy of BookRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRatingModelImplCopyWith<_$BookRatingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookRatingLiteModel _$BookRatingLiteModelFromJson(Map<String, dynamic> json) {
  return _BookRatingLiteModel.fromJson(json);
}

/// @nodoc
mixin _$BookRatingLiteModel {
  @JsonKey(name: BookRatingLiteModel.idKey)
  BookRatingId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingLiteModel.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingLiteModel.bookIdKey)
  BookId get bookId => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingLiteModel.ratingKey)
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingLiteModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this BookRatingLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookRatingLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRatingLiteModelCopyWith<BookRatingLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRatingLiteModelCopyWith<$Res> {
  factory $BookRatingLiteModelCopyWith(
          BookRatingLiteModel value, $Res Function(BookRatingLiteModel) then) =
      _$BookRatingLiteModelCopyWithImpl<$Res, BookRatingLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BookRatingLiteModel.idKey) BookRatingId id,
      @JsonKey(name: BookRatingLiteModel.userIdKey) ProfileId userId,
      @JsonKey(name: BookRatingLiteModel.bookIdKey) BookId bookId,
      @JsonKey(name: BookRatingLiteModel.ratingKey) int rating,
      @JsonKey(name: BookRatingLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class _$BookRatingLiteModelCopyWithImpl<$Res, $Val extends BookRatingLiteModel>
    implements $BookRatingLiteModelCopyWith<$Res> {
  _$BookRatingLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRatingLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? bookId = null,
    Object? rating = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookRatingId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
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
abstract class _$$BookRatingLiteModelImplCopyWith<$Res>
    implements $BookRatingLiteModelCopyWith<$Res> {
  factory _$$BookRatingLiteModelImplCopyWith(_$BookRatingLiteModelImpl value,
          $Res Function(_$BookRatingLiteModelImpl) then) =
      __$$BookRatingLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookRatingLiteModel.idKey) BookRatingId id,
      @JsonKey(name: BookRatingLiteModel.userIdKey) ProfileId userId,
      @JsonKey(name: BookRatingLiteModel.bookIdKey) BookId bookId,
      @JsonKey(name: BookRatingLiteModel.ratingKey) int rating,
      @JsonKey(name: BookRatingLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class __$$BookRatingLiteModelImplCopyWithImpl<$Res>
    extends _$BookRatingLiteModelCopyWithImpl<$Res, _$BookRatingLiteModelImpl>
    implements _$$BookRatingLiteModelImplCopyWith<$Res> {
  __$$BookRatingLiteModelImplCopyWithImpl(_$BookRatingLiteModelImpl _value,
      $Res Function(_$BookRatingLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRatingLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? bookId = null,
    Object? rating = null,
    Object? createdAt = null,
  }) {
    return _then(_$BookRatingLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookRatingId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
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

@TableModel(BookRatingLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$BookRatingLiteModelImpl extends _BookRatingLiteModel {
  const _$BookRatingLiteModelImpl(
      {@JsonKey(name: BookRatingLiteModel.idKey) required this.id,
      @JsonKey(name: BookRatingLiteModel.userIdKey) required this.userId,
      @JsonKey(name: BookRatingLiteModel.bookIdKey) required this.bookId,
      @JsonKey(name: BookRatingLiteModel.ratingKey) required this.rating,
      @JsonKey(name: BookRatingLiteModel.createdAtKey) required this.createdAt})
      : super._();

  factory _$BookRatingLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookRatingLiteModelImplFromJson(json);

  @override
  @JsonKey(name: BookRatingLiteModel.idKey)
  final BookRatingId id;
  @override
  @JsonKey(name: BookRatingLiteModel.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: BookRatingLiteModel.bookIdKey)
  final BookId bookId;
  @override
  @JsonKey(name: BookRatingLiteModel.ratingKey)
  final int rating;
  @override
  @JsonKey(name: BookRatingLiteModel.createdAtKey)
  final DateTime createdAt;

  @override
  String toString() {
    return 'BookRatingLiteModel(id: $id, userId: $userId, bookId: $bookId, rating: $rating, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRatingLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, bookId, rating, createdAt);

  /// Create a copy of BookRatingLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRatingLiteModelImplCopyWith<_$BookRatingLiteModelImpl> get copyWith =>
      __$$BookRatingLiteModelImplCopyWithImpl<_$BookRatingLiteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookRatingLiteModelImplToJson(
      this,
    );
  }
}

abstract class _BookRatingLiteModel extends BookRatingLiteModel {
  const factory _BookRatingLiteModel(
      {@JsonKey(name: BookRatingLiteModel.idKey) required final BookRatingId id,
      @JsonKey(name: BookRatingLiteModel.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: BookRatingLiteModel.bookIdKey)
      required final BookId bookId,
      @JsonKey(name: BookRatingLiteModel.ratingKey) required final int rating,
      @JsonKey(name: BookRatingLiteModel.createdAtKey)
      required final DateTime createdAt}) = _$BookRatingLiteModelImpl;
  const _BookRatingLiteModel._() : super._();

  factory _BookRatingLiteModel.fromJson(Map<String, dynamic> json) =
      _$BookRatingLiteModelImpl.fromJson;

  @override
  @JsonKey(name: BookRatingLiteModel.idKey)
  BookRatingId get id;
  @override
  @JsonKey(name: BookRatingLiteModel.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: BookRatingLiteModel.bookIdKey)
  BookId get bookId;
  @override
  @JsonKey(name: BookRatingLiteModel.ratingKey)
  int get rating;
  @override
  @JsonKey(name: BookRatingLiteModel.createdAtKey)
  DateTime get createdAt;

  /// Create a copy of BookRatingLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRatingLiteModelImplCopyWith<_$BookRatingLiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookRatingDetailModel _$BookRatingDetailModelFromJson(
    Map<String, dynamic> json) {
  return _BookRatingDetailModel.fromJson(json);
}

/// @nodoc
mixin _$BookRatingDetailModel {
  @JsonKey(name: BookRatingDetailModel.idKey)
  BookRatingId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingDetailModel.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingDetailModel.bookIdKey)
  BookId get bookId => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingDetailModel.ratingKey)
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingDetailModel.commentKey)
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingDetailModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: BookRatingDetailModel.userKey)
  ProfileLiteModel get user => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: BookRatingDetailModel.bookKey)
  BookLiteModel get book => throw _privateConstructorUsedError;

  /// Serializes this BookRatingDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRatingDetailModelCopyWith<BookRatingDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRatingDetailModelCopyWith<$Res> {
  factory $BookRatingDetailModelCopyWith(BookRatingDetailModel value,
          $Res Function(BookRatingDetailModel) then) =
      _$BookRatingDetailModelCopyWithImpl<$Res, BookRatingDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BookRatingDetailModel.idKey) BookRatingId id,
      @JsonKey(name: BookRatingDetailModel.userIdKey) ProfileId userId,
      @JsonKey(name: BookRatingDetailModel.bookIdKey) BookId bookId,
      @JsonKey(name: BookRatingDetailModel.ratingKey) int rating,
      @JsonKey(name: BookRatingDetailModel.commentKey) String? comment,
      @JsonKey(name: BookRatingDetailModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: BookRatingDetailModel.userKey)
      ProfileLiteModel user,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: BookRatingDetailModel.bookKey)
      BookLiteModel book});

  $ProfileLiteModelCopyWith<$Res> get user;
  $BookLiteModelCopyWith<$Res> get book;
}

/// @nodoc
class _$BookRatingDetailModelCopyWithImpl<$Res,
        $Val extends BookRatingDetailModel>
    implements $BookRatingDetailModelCopyWith<$Res> {
  _$BookRatingDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? bookId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? user = null,
    Object? book = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookRatingId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
    ) as $Val);
  }

  /// Create a copy of BookRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get user {
    return $ProfileLiteModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of BookRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookLiteModelCopyWith<$Res> get book {
    return $BookLiteModelCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookRatingDetailModelImplCopyWith<$Res>
    implements $BookRatingDetailModelCopyWith<$Res> {
  factory _$$BookRatingDetailModelImplCopyWith(
          _$BookRatingDetailModelImpl value,
          $Res Function(_$BookRatingDetailModelImpl) then) =
      __$$BookRatingDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookRatingDetailModel.idKey) BookRatingId id,
      @JsonKey(name: BookRatingDetailModel.userIdKey) ProfileId userId,
      @JsonKey(name: BookRatingDetailModel.bookIdKey) BookId bookId,
      @JsonKey(name: BookRatingDetailModel.ratingKey) int rating,
      @JsonKey(name: BookRatingDetailModel.commentKey) String? comment,
      @JsonKey(name: BookRatingDetailModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: BookRatingDetailModel.userKey)
      ProfileLiteModel user,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: BookRatingDetailModel.bookKey)
      BookLiteModel book});

  @override
  $ProfileLiteModelCopyWith<$Res> get user;
  @override
  $BookLiteModelCopyWith<$Res> get book;
}

/// @nodoc
class __$$BookRatingDetailModelImplCopyWithImpl<$Res>
    extends _$BookRatingDetailModelCopyWithImpl<$Res,
        _$BookRatingDetailModelImpl>
    implements _$$BookRatingDetailModelImplCopyWith<$Res> {
  __$$BookRatingDetailModelImplCopyWithImpl(_$BookRatingDetailModelImpl _value,
      $Res Function(_$BookRatingDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? bookId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? user = null,
    Object? book = null,
  }) {
    return _then(_$BookRatingDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookRatingId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
    ));
  }
}

/// @nodoc

@TableModel(BookRatingDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$BookRatingDetailModelImpl extends _BookRatingDetailModel {
  const _$BookRatingDetailModelImpl(
      {@JsonKey(name: BookRatingDetailModel.idKey) required this.id,
      @JsonKey(name: BookRatingDetailModel.userIdKey) required this.userId,
      @JsonKey(name: BookRatingDetailModel.bookIdKey) required this.bookId,
      @JsonKey(name: BookRatingDetailModel.ratingKey) required this.rating,
      @JsonKey(name: BookRatingDetailModel.commentKey) required this.comment,
      @JsonKey(name: BookRatingDetailModel.createdAtKey)
      required this.createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: BookRatingDetailModel.userKey)
      required this.user,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: BookRatingDetailModel.bookKey)
      required this.book})
      : super._();

  factory _$BookRatingDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookRatingDetailModelImplFromJson(json);

  @override
  @JsonKey(name: BookRatingDetailModel.idKey)
  final BookRatingId id;
  @override
  @JsonKey(name: BookRatingDetailModel.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: BookRatingDetailModel.bookIdKey)
  final BookId bookId;
  @override
  @JsonKey(name: BookRatingDetailModel.ratingKey)
  final int rating;
  @override
  @JsonKey(name: BookRatingDetailModel.commentKey)
  final String? comment;
  @override
  @JsonKey(name: BookRatingDetailModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: BookRatingDetailModel.userKey)
  final ProfileLiteModel user;
  @override
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: BookRatingDetailModel.bookKey)
  final BookLiteModel book;

  @override
  String toString() {
    return 'BookRatingDetailModel(id: $id, userId: $userId, bookId: $bookId, rating: $rating, comment: $comment, createdAt: $createdAt, user: $user, book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRatingDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.book, book) || other.book == book));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, bookId, rating, comment, createdAt, user, book);

  /// Create a copy of BookRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRatingDetailModelImplCopyWith<_$BookRatingDetailModelImpl>
      get copyWith => __$$BookRatingDetailModelImplCopyWithImpl<
          _$BookRatingDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookRatingDetailModelImplToJson(
      this,
    );
  }
}

abstract class _BookRatingDetailModel extends BookRatingDetailModel {
  const factory _BookRatingDetailModel(
      {@JsonKey(name: BookRatingDetailModel.idKey)
      required final BookRatingId id,
      @JsonKey(name: BookRatingDetailModel.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: BookRatingDetailModel.bookIdKey)
      required final BookId bookId,
      @JsonKey(name: BookRatingDetailModel.ratingKey) required final int rating,
      @JsonKey(name: BookRatingDetailModel.commentKey)
      required final String? comment,
      @JsonKey(name: BookRatingDetailModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: BookRatingDetailModel.userKey)
      required final ProfileLiteModel user,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: BookRatingDetailModel.bookKey)
      required final BookLiteModel book}) = _$BookRatingDetailModelImpl;
  const _BookRatingDetailModel._() : super._();

  factory _BookRatingDetailModel.fromJson(Map<String, dynamic> json) =
      _$BookRatingDetailModelImpl.fromJson;

  @override
  @JsonKey(name: BookRatingDetailModel.idKey)
  BookRatingId get id;
  @override
  @JsonKey(name: BookRatingDetailModel.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: BookRatingDetailModel.bookIdKey)
  BookId get bookId;
  @override
  @JsonKey(name: BookRatingDetailModel.ratingKey)
  int get rating;
  @override
  @JsonKey(name: BookRatingDetailModel.commentKey)
  String? get comment;
  @override
  @JsonKey(name: BookRatingDetailModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: BookRatingDetailModel.userKey)
  ProfileLiteModel get user;
  @override
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: BookRatingDetailModel.bookKey)
  BookLiteModel get book;

  /// Create a copy of BookRatingDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRatingDetailModelImplCopyWith<_$BookRatingDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookRatingCreateParam _$BookRatingCreateParamFromJson(
    Map<String, dynamic> json) {
  return _BookRatingCreateParam.fromJson(json);
}

/// @nodoc
mixin _$BookRatingCreateParam {
  @JsonKey(name: BookRatingCreateParam.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingCreateParam.bookIdKey)
  BookId get bookId => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingCreateParam.ratingKey)
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingCreateParam.commentKey)
  String? get comment => throw _privateConstructorUsedError;

  /// Serializes this BookRatingCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookRatingCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRatingCreateParamCopyWith<BookRatingCreateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRatingCreateParamCopyWith<$Res> {
  factory $BookRatingCreateParamCopyWith(BookRatingCreateParam value,
          $Res Function(BookRatingCreateParam) then) =
      _$BookRatingCreateParamCopyWithImpl<$Res, BookRatingCreateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: BookRatingCreateParam.userIdKey) ProfileId userId,
      @JsonKey(name: BookRatingCreateParam.bookIdKey) BookId bookId,
      @JsonKey(name: BookRatingCreateParam.ratingKey) int rating,
      @JsonKey(name: BookRatingCreateParam.commentKey) String? comment});
}

/// @nodoc
class _$BookRatingCreateParamCopyWithImpl<$Res,
        $Val extends BookRatingCreateParam>
    implements $BookRatingCreateParamCopyWith<$Res> {
  _$BookRatingCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRatingCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? bookId = null,
    Object? rating = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
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
abstract class _$$BookRatingCreateParamImplCopyWith<$Res>
    implements $BookRatingCreateParamCopyWith<$Res> {
  factory _$$BookRatingCreateParamImplCopyWith(
          _$BookRatingCreateParamImpl value,
          $Res Function(_$BookRatingCreateParamImpl) then) =
      __$$BookRatingCreateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookRatingCreateParam.userIdKey) ProfileId userId,
      @JsonKey(name: BookRatingCreateParam.bookIdKey) BookId bookId,
      @JsonKey(name: BookRatingCreateParam.ratingKey) int rating,
      @JsonKey(name: BookRatingCreateParam.commentKey) String? comment});
}

/// @nodoc
class __$$BookRatingCreateParamImplCopyWithImpl<$Res>
    extends _$BookRatingCreateParamCopyWithImpl<$Res,
        _$BookRatingCreateParamImpl>
    implements _$$BookRatingCreateParamImplCopyWith<$Res> {
  __$$BookRatingCreateParamImplCopyWithImpl(_$BookRatingCreateParamImpl _value,
      $Res Function(_$BookRatingCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRatingCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? bookId = null,
    Object? rating = null,
    Object? comment = freezed,
  }) {
    return _then(_$BookRatingCreateParamImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
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
class _$BookRatingCreateParamImpl extends _BookRatingCreateParam {
  const _$BookRatingCreateParamImpl(
      {@JsonKey(name: BookRatingCreateParam.userIdKey) required this.userId,
      @JsonKey(name: BookRatingCreateParam.bookIdKey) required this.bookId,
      @JsonKey(name: BookRatingCreateParam.ratingKey) required this.rating,
      @JsonKey(name: BookRatingCreateParam.commentKey) required this.comment})
      : super._();

  factory _$BookRatingCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookRatingCreateParamImplFromJson(json);

  @override
  @JsonKey(name: BookRatingCreateParam.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: BookRatingCreateParam.bookIdKey)
  final BookId bookId;
  @override
  @JsonKey(name: BookRatingCreateParam.ratingKey)
  final int rating;
  @override
  @JsonKey(name: BookRatingCreateParam.commentKey)
  final String? comment;

  @override
  String toString() {
    return 'BookRatingCreateParam(userId: $userId, bookId: $bookId, rating: $rating, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRatingCreateParamImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, bookId, rating, comment);

  /// Create a copy of BookRatingCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRatingCreateParamImplCopyWith<_$BookRatingCreateParamImpl>
      get copyWith => __$$BookRatingCreateParamImplCopyWithImpl<
          _$BookRatingCreateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookRatingCreateParamImplToJson(
      this,
    );
  }
}

abstract class _BookRatingCreateParam extends BookRatingCreateParam {
  const factory _BookRatingCreateParam(
      {@JsonKey(name: BookRatingCreateParam.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: BookRatingCreateParam.bookIdKey)
      required final BookId bookId,
      @JsonKey(name: BookRatingCreateParam.ratingKey) required final int rating,
      @JsonKey(name: BookRatingCreateParam.commentKey)
      required final String? comment}) = _$BookRatingCreateParamImpl;
  const _BookRatingCreateParam._() : super._();

  factory _BookRatingCreateParam.fromJson(Map<String, dynamic> json) =
      _$BookRatingCreateParamImpl.fromJson;

  @override
  @JsonKey(name: BookRatingCreateParam.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: BookRatingCreateParam.bookIdKey)
  BookId get bookId;
  @override
  @JsonKey(name: BookRatingCreateParam.ratingKey)
  int get rating;
  @override
  @JsonKey(name: BookRatingCreateParam.commentKey)
  String? get comment;

  /// Create a copy of BookRatingCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRatingCreateParamImplCopyWith<_$BookRatingCreateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookRatingUpdateParam _$BookRatingUpdateParamFromJson(
    Map<String, dynamic> json) {
  return _BookRatingUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$BookRatingUpdateParam {
  @JsonKey(name: BookRatingUpdateParam.ratingKey)
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: BookRatingUpdateParam.commentKey)
  String? get comment => throw _privateConstructorUsedError;

  /// Serializes this BookRatingUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookRatingUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRatingUpdateParamCopyWith<BookRatingUpdateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRatingUpdateParamCopyWith<$Res> {
  factory $BookRatingUpdateParamCopyWith(BookRatingUpdateParam value,
          $Res Function(BookRatingUpdateParam) then) =
      _$BookRatingUpdateParamCopyWithImpl<$Res, BookRatingUpdateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: BookRatingUpdateParam.ratingKey) int? rating,
      @JsonKey(name: BookRatingUpdateParam.commentKey) String? comment});
}

/// @nodoc
class _$BookRatingUpdateParamCopyWithImpl<$Res,
        $Val extends BookRatingUpdateParam>
    implements $BookRatingUpdateParamCopyWith<$Res> {
  _$BookRatingUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRatingUpdateParam
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
abstract class _$$BookRatingUpdateParamImplCopyWith<$Res>
    implements $BookRatingUpdateParamCopyWith<$Res> {
  factory _$$BookRatingUpdateParamImplCopyWith(
          _$BookRatingUpdateParamImpl value,
          $Res Function(_$BookRatingUpdateParamImpl) then) =
      __$$BookRatingUpdateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookRatingUpdateParam.ratingKey) int? rating,
      @JsonKey(name: BookRatingUpdateParam.commentKey) String? comment});
}

/// @nodoc
class __$$BookRatingUpdateParamImplCopyWithImpl<$Res>
    extends _$BookRatingUpdateParamCopyWithImpl<$Res,
        _$BookRatingUpdateParamImpl>
    implements _$$BookRatingUpdateParamImplCopyWith<$Res> {
  __$$BookRatingUpdateParamImplCopyWithImpl(_$BookRatingUpdateParamImpl _value,
      $Res Function(_$BookRatingUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRatingUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$BookRatingUpdateParamImpl(
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
class _$BookRatingUpdateParamImpl extends _BookRatingUpdateParam {
  const _$BookRatingUpdateParamImpl(
      {@JsonKey(name: BookRatingUpdateParam.ratingKey) required this.rating,
      @JsonKey(name: BookRatingUpdateParam.commentKey) required this.comment})
      : super._();

  factory _$BookRatingUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookRatingUpdateParamImplFromJson(json);

  @override
  @JsonKey(name: BookRatingUpdateParam.ratingKey)
  final int? rating;
  @override
  @JsonKey(name: BookRatingUpdateParam.commentKey)
  final String? comment;

  @override
  String toString() {
    return 'BookRatingUpdateParam(rating: $rating, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRatingUpdateParamImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, comment);

  /// Create a copy of BookRatingUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRatingUpdateParamImplCopyWith<_$BookRatingUpdateParamImpl>
      get copyWith => __$$BookRatingUpdateParamImplCopyWithImpl<
          _$BookRatingUpdateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookRatingUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _BookRatingUpdateParam extends BookRatingUpdateParam {
  const factory _BookRatingUpdateParam(
      {@JsonKey(name: BookRatingUpdateParam.ratingKey)
      required final int? rating,
      @JsonKey(name: BookRatingUpdateParam.commentKey)
      required final String? comment}) = _$BookRatingUpdateParamImpl;
  const _BookRatingUpdateParam._() : super._();

  factory _BookRatingUpdateParam.fromJson(Map<String, dynamic> json) =
      _$BookRatingUpdateParamImpl.fromJson;

  @override
  @JsonKey(name: BookRatingUpdateParam.ratingKey)
  int? get rating;
  @override
  @JsonKey(name: BookRatingUpdateParam.commentKey)
  String? get comment;

  /// Create a copy of BookRatingUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRatingUpdateParamImplCopyWith<_$BookRatingUpdateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
