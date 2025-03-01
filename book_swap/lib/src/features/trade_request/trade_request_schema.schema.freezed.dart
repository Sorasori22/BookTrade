// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_request_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeRequestModel _$TradeRequestModelFromJson(Map<String, dynamic> json) {
  return _TradeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$TradeRequestModel {
  @JsonKey(name: TradeRequestModel.idKey)
  TradeRequestId get id => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestModel.requesterIdKey)
  ProfileId get requesterId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestModel.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestModel.bookIdKey)
  BookId get bookId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestModel.offeredBookIdKey)
  BookId? get offeredBookId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestModel.statusKey)
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestModel.messageKey)
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestModel.updatedAtKey)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.requesterKey)
  ProfileLiteModel get requester => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.ownerKey)
  ProfileLiteModel get owner => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.bookKey)
  BookLiteModel get book => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.offeredBookKey)
  BookLiteModel? get offeredBook => throw _privateConstructorUsedError;

  /// Serializes this TradeRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeRequestModelCopyWith<TradeRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeRequestModelCopyWith<$Res> {
  factory $TradeRequestModelCopyWith(
          TradeRequestModel value, $Res Function(TradeRequestModel) then) =
      _$TradeRequestModelCopyWithImpl<$Res, TradeRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: TradeRequestModel.idKey) TradeRequestId id,
      @JsonKey(name: TradeRequestModel.requesterIdKey) ProfileId requesterId,
      @JsonKey(name: TradeRequestModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: TradeRequestModel.bookIdKey) BookId bookId,
      @JsonKey(name: TradeRequestModel.offeredBookIdKey) BookId? offeredBookId,
      @JsonKey(name: TradeRequestModel.statusKey) String status,
      @JsonKey(name: TradeRequestModel.messageKey) String? message,
      @JsonKey(name: TradeRequestModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: TradeRequestModel.updatedAtKey) DateTime updatedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.requesterKey)
      ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.ownerKey)
      ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.bookKey)
      BookLiteModel book,
      @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.offeredBookKey)
      BookLiteModel? offeredBook});

  $ProfileLiteModelCopyWith<$Res> get requester;
  $ProfileLiteModelCopyWith<$Res> get owner;
  $BookLiteModelCopyWith<$Res> get book;
  $BookLiteModelCopyWith<$Res>? get offeredBook;
}

/// @nodoc
class _$TradeRequestModelCopyWithImpl<$Res, $Val extends TradeRequestModel>
    implements $TradeRequestModelCopyWith<$Res> {
  _$TradeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? bookId = null,
    Object? offeredBookId = freezed,
    Object? status = null,
    Object? message = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? requester = null,
    Object? owner = null,
    Object? book = null,
    Object? offeredBook = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TradeRequestId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      offeredBookId: freezed == offeredBookId
          ? _value.offeredBookId
          : offeredBookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requester: null == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
      offeredBook: freezed == offeredBook
          ? _value.offeredBook
          : offeredBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel?,
    ) as $Val);
  }

  /// Create a copy of TradeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get requester {
    return $ProfileLiteModelCopyWith<$Res>(_value.requester, (value) {
      return _then(_value.copyWith(requester: value) as $Val);
    });
  }

  /// Create a copy of TradeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get owner {
    return $ProfileLiteModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of TradeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookLiteModelCopyWith<$Res> get book {
    return $BookLiteModelCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }

  /// Create a copy of TradeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookLiteModelCopyWith<$Res>? get offeredBook {
    if (_value.offeredBook == null) {
      return null;
    }

    return $BookLiteModelCopyWith<$Res>(_value.offeredBook!, (value) {
      return _then(_value.copyWith(offeredBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TradeRequestModelImplCopyWith<$Res>
    implements $TradeRequestModelCopyWith<$Res> {
  factory _$$TradeRequestModelImplCopyWith(_$TradeRequestModelImpl value,
          $Res Function(_$TradeRequestModelImpl) then) =
      __$$TradeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: TradeRequestModel.idKey) TradeRequestId id,
      @JsonKey(name: TradeRequestModel.requesterIdKey) ProfileId requesterId,
      @JsonKey(name: TradeRequestModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: TradeRequestModel.bookIdKey) BookId bookId,
      @JsonKey(name: TradeRequestModel.offeredBookIdKey) BookId? offeredBookId,
      @JsonKey(name: TradeRequestModel.statusKey) String status,
      @JsonKey(name: TradeRequestModel.messageKey) String? message,
      @JsonKey(name: TradeRequestModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: TradeRequestModel.updatedAtKey) DateTime updatedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.requesterKey)
      ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.ownerKey)
      ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.bookKey)
      BookLiteModel book,
      @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.offeredBookKey)
      BookLiteModel? offeredBook});

  @override
  $ProfileLiteModelCopyWith<$Res> get requester;
  @override
  $ProfileLiteModelCopyWith<$Res> get owner;
  @override
  $BookLiteModelCopyWith<$Res> get book;
  @override
  $BookLiteModelCopyWith<$Res>? get offeredBook;
}

/// @nodoc
class __$$TradeRequestModelImplCopyWithImpl<$Res>
    extends _$TradeRequestModelCopyWithImpl<$Res, _$TradeRequestModelImpl>
    implements _$$TradeRequestModelImplCopyWith<$Res> {
  __$$TradeRequestModelImplCopyWithImpl(_$TradeRequestModelImpl _value,
      $Res Function(_$TradeRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? bookId = null,
    Object? offeredBookId = freezed,
    Object? status = null,
    Object? message = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? requester = null,
    Object? owner = null,
    Object? book = null,
    Object? offeredBook = freezed,
  }) {
    return _then(_$TradeRequestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TradeRequestId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      offeredBookId: freezed == offeredBookId
          ? _value.offeredBookId
          : offeredBookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requester: null == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
      offeredBook: freezed == offeredBook
          ? _value.offeredBook
          : offeredBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel?,
    ));
  }
}

/// @nodoc

@TableModel(TradeRequestModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$TradeRequestModelImpl extends _TradeRequestModel {
  const _$TradeRequestModelImpl(
      {@JsonKey(name: TradeRequestModel.idKey) required this.id,
      @JsonKey(name: TradeRequestModel.requesterIdKey)
      required this.requesterId,
      @JsonKey(name: TradeRequestModel.ownerIdKey) required this.ownerId,
      @JsonKey(name: TradeRequestModel.bookIdKey) required this.bookId,
      @JsonKey(name: TradeRequestModel.offeredBookIdKey)
      required this.offeredBookId,
      @JsonKey(name: TradeRequestModel.statusKey) required this.status,
      @JsonKey(name: TradeRequestModel.messageKey) required this.message,
      @JsonKey(name: TradeRequestModel.createdAtKey) required this.createdAt,
      @JsonKey(name: TradeRequestModel.updatedAtKey) required this.updatedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.requesterKey)
      required this.requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.ownerKey)
      required this.owner,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.bookKey)
      required this.book,
      @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.offeredBookKey)
      required this.offeredBook})
      : super._();

  factory _$TradeRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeRequestModelImplFromJson(json);

  @override
  @JsonKey(name: TradeRequestModel.idKey)
  final TradeRequestId id;
  @override
  @JsonKey(name: TradeRequestModel.requesterIdKey)
  final ProfileId requesterId;
  @override
  @JsonKey(name: TradeRequestModel.ownerIdKey)
  final ProfileId ownerId;
  @override
  @JsonKey(name: TradeRequestModel.bookIdKey)
  final BookId bookId;
  @override
  @JsonKey(name: TradeRequestModel.offeredBookIdKey)
  final BookId? offeredBookId;
  @override
  @JsonKey(name: TradeRequestModel.statusKey)
  final String status;
  @override
  @JsonKey(name: TradeRequestModel.messageKey)
  final String? message;
  @override
  @JsonKey(name: TradeRequestModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: TradeRequestModel.updatedAtKey)
  final DateTime updatedAt;
  @override
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.requesterKey)
  final ProfileLiteModel requester;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.ownerKey)
  final ProfileLiteModel owner;
  @override
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.bookKey)
  final BookLiteModel book;
  @override
  @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.offeredBookKey)
  final BookLiteModel? offeredBook;

  @override
  String toString() {
    return 'TradeRequestModel(id: $id, requesterId: $requesterId, ownerId: $ownerId, bookId: $bookId, offeredBookId: $offeredBookId, status: $status, message: $message, createdAt: $createdAt, updatedAt: $updatedAt, requester: $requester, owner: $owner, book: $book, offeredBook: $offeredBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.offeredBookId, offeredBookId) ||
                other.offeredBookId == offeredBookId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.requester, requester) ||
                other.requester == requester) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.offeredBook, offeredBook) ||
                other.offeredBook == offeredBook));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      requesterId,
      ownerId,
      bookId,
      offeredBookId,
      status,
      message,
      createdAt,
      updatedAt,
      requester,
      owner,
      book,
      offeredBook);

  /// Create a copy of TradeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeRequestModelImplCopyWith<_$TradeRequestModelImpl> get copyWith =>
      __$$TradeRequestModelImplCopyWithImpl<_$TradeRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _TradeRequestModel extends TradeRequestModel {
  const factory _TradeRequestModel(
      {@JsonKey(name: TradeRequestModel.idKey) required final TradeRequestId id,
      @JsonKey(name: TradeRequestModel.requesterIdKey)
      required final ProfileId requesterId,
      @JsonKey(name: TradeRequestModel.ownerIdKey)
      required final ProfileId ownerId,
      @JsonKey(name: TradeRequestModel.bookIdKey) required final BookId bookId,
      @JsonKey(name: TradeRequestModel.offeredBookIdKey)
      required final BookId? offeredBookId,
      @JsonKey(name: TradeRequestModel.statusKey) required final String status,
      @JsonKey(name: TradeRequestModel.messageKey)
      required final String? message,
      @JsonKey(name: TradeRequestModel.createdAtKey)
      required final DateTime createdAt,
      @JsonKey(name: TradeRequestModel.updatedAtKey)
      required final DateTime updatedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.requesterKey)
      required final ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.ownerKey)
      required final ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.bookKey)
      required final BookLiteModel book,
      @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestModel.offeredBookKey)
      required final BookLiteModel? offeredBook}) = _$TradeRequestModelImpl;
  const _TradeRequestModel._() : super._();

  factory _TradeRequestModel.fromJson(Map<String, dynamic> json) =
      _$TradeRequestModelImpl.fromJson;

  @override
  @JsonKey(name: TradeRequestModel.idKey)
  TradeRequestId get id;
  @override
  @JsonKey(name: TradeRequestModel.requesterIdKey)
  ProfileId get requesterId;
  @override
  @JsonKey(name: TradeRequestModel.ownerIdKey)
  ProfileId get ownerId;
  @override
  @JsonKey(name: TradeRequestModel.bookIdKey)
  BookId get bookId;
  @override
  @JsonKey(name: TradeRequestModel.offeredBookIdKey)
  BookId? get offeredBookId;
  @override
  @JsonKey(name: TradeRequestModel.statusKey)
  String get status;
  @override
  @JsonKey(name: TradeRequestModel.messageKey)
  String? get message;
  @override
  @JsonKey(name: TradeRequestModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: TradeRequestModel.updatedAtKey)
  DateTime get updatedAt;
  @override
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.requesterKey)
  ProfileLiteModel get requester;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.ownerKey)
  ProfileLiteModel get owner;
  @override
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.bookKey)
  BookLiteModel get book;
  @override
  @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestModel.offeredBookKey)
  BookLiteModel? get offeredBook;

  /// Create a copy of TradeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeRequestModelImplCopyWith<_$TradeRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradeRequestLiteModel _$TradeRequestLiteModelFromJson(
    Map<String, dynamic> json) {
  return _TradeRequestLiteModel.fromJson(json);
}

/// @nodoc
mixin _$TradeRequestLiteModel {
  @JsonKey(name: TradeRequestLiteModel.idKey)
  TradeRequestId get id => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestLiteModel.requesterIdKey)
  ProfileId get requesterId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestLiteModel.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestLiteModel.bookIdKey)
  BookId get bookId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestLiteModel.offeredBookIdKey)
  BookId? get offeredBookId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestLiteModel.statusKey)
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestLiteModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this TradeRequestLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeRequestLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeRequestLiteModelCopyWith<TradeRequestLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeRequestLiteModelCopyWith<$Res> {
  factory $TradeRequestLiteModelCopyWith(TradeRequestLiteModel value,
          $Res Function(TradeRequestLiteModel) then) =
      _$TradeRequestLiteModelCopyWithImpl<$Res, TradeRequestLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: TradeRequestLiteModel.idKey) TradeRequestId id,
      @JsonKey(name: TradeRequestLiteModel.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: TradeRequestLiteModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: TradeRequestLiteModel.bookIdKey) BookId bookId,
      @JsonKey(name: TradeRequestLiteModel.offeredBookIdKey)
      BookId? offeredBookId,
      @JsonKey(name: TradeRequestLiteModel.statusKey) String status,
      @JsonKey(name: TradeRequestLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class _$TradeRequestLiteModelCopyWithImpl<$Res,
        $Val extends TradeRequestLiteModel>
    implements $TradeRequestLiteModelCopyWith<$Res> {
  _$TradeRequestLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeRequestLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? bookId = null,
    Object? offeredBookId = freezed,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TradeRequestId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      offeredBookId: freezed == offeredBookId
          ? _value.offeredBookId
          : offeredBookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeRequestLiteModelImplCopyWith<$Res>
    implements $TradeRequestLiteModelCopyWith<$Res> {
  factory _$$TradeRequestLiteModelImplCopyWith(
          _$TradeRequestLiteModelImpl value,
          $Res Function(_$TradeRequestLiteModelImpl) then) =
      __$$TradeRequestLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: TradeRequestLiteModel.idKey) TradeRequestId id,
      @JsonKey(name: TradeRequestLiteModel.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: TradeRequestLiteModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: TradeRequestLiteModel.bookIdKey) BookId bookId,
      @JsonKey(name: TradeRequestLiteModel.offeredBookIdKey)
      BookId? offeredBookId,
      @JsonKey(name: TradeRequestLiteModel.statusKey) String status,
      @JsonKey(name: TradeRequestLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class __$$TradeRequestLiteModelImplCopyWithImpl<$Res>
    extends _$TradeRequestLiteModelCopyWithImpl<$Res,
        _$TradeRequestLiteModelImpl>
    implements _$$TradeRequestLiteModelImplCopyWith<$Res> {
  __$$TradeRequestLiteModelImplCopyWithImpl(_$TradeRequestLiteModelImpl _value,
      $Res Function(_$TradeRequestLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeRequestLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? bookId = null,
    Object? offeredBookId = freezed,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_$TradeRequestLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TradeRequestId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      offeredBookId: freezed == offeredBookId
          ? _value.offeredBookId
          : offeredBookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(TradeRequestLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$TradeRequestLiteModelImpl extends _TradeRequestLiteModel {
  const _$TradeRequestLiteModelImpl(
      {@JsonKey(name: TradeRequestLiteModel.idKey) required this.id,
      @JsonKey(name: TradeRequestLiteModel.requesterIdKey)
      required this.requesterId,
      @JsonKey(name: TradeRequestLiteModel.ownerIdKey) required this.ownerId,
      @JsonKey(name: TradeRequestLiteModel.bookIdKey) required this.bookId,
      @JsonKey(name: TradeRequestLiteModel.offeredBookIdKey)
      required this.offeredBookId,
      @JsonKey(name: TradeRequestLiteModel.statusKey) required this.status,
      @JsonKey(name: TradeRequestLiteModel.createdAtKey)
      required this.createdAt})
      : super._();

  factory _$TradeRequestLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeRequestLiteModelImplFromJson(json);

  @override
  @JsonKey(name: TradeRequestLiteModel.idKey)
  final TradeRequestId id;
  @override
  @JsonKey(name: TradeRequestLiteModel.requesterIdKey)
  final ProfileId requesterId;
  @override
  @JsonKey(name: TradeRequestLiteModel.ownerIdKey)
  final ProfileId ownerId;
  @override
  @JsonKey(name: TradeRequestLiteModel.bookIdKey)
  final BookId bookId;
  @override
  @JsonKey(name: TradeRequestLiteModel.offeredBookIdKey)
  final BookId? offeredBookId;
  @override
  @JsonKey(name: TradeRequestLiteModel.statusKey)
  final String status;
  @override
  @JsonKey(name: TradeRequestLiteModel.createdAtKey)
  final DateTime createdAt;

  @override
  String toString() {
    return 'TradeRequestLiteModel(id: $id, requesterId: $requesterId, ownerId: $ownerId, bookId: $bookId, offeredBookId: $offeredBookId, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeRequestLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.offeredBookId, offeredBookId) ||
                other.offeredBookId == offeredBookId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, requesterId, ownerId, bookId,
      offeredBookId, status, createdAt);

  /// Create a copy of TradeRequestLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeRequestLiteModelImplCopyWith<_$TradeRequestLiteModelImpl>
      get copyWith => __$$TradeRequestLiteModelImplCopyWithImpl<
          _$TradeRequestLiteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeRequestLiteModelImplToJson(
      this,
    );
  }
}

abstract class _TradeRequestLiteModel extends TradeRequestLiteModel {
  const factory _TradeRequestLiteModel(
      {@JsonKey(name: TradeRequestLiteModel.idKey)
      required final TradeRequestId id,
      @JsonKey(name: TradeRequestLiteModel.requesterIdKey)
      required final ProfileId requesterId,
      @JsonKey(name: TradeRequestLiteModel.ownerIdKey)
      required final ProfileId ownerId,
      @JsonKey(name: TradeRequestLiteModel.bookIdKey)
      required final BookId bookId,
      @JsonKey(name: TradeRequestLiteModel.offeredBookIdKey)
      required final BookId? offeredBookId,
      @JsonKey(name: TradeRequestLiteModel.statusKey)
      required final String status,
      @JsonKey(name: TradeRequestLiteModel.createdAtKey)
      required final DateTime createdAt}) = _$TradeRequestLiteModelImpl;
  const _TradeRequestLiteModel._() : super._();

  factory _TradeRequestLiteModel.fromJson(Map<String, dynamic> json) =
      _$TradeRequestLiteModelImpl.fromJson;

  @override
  @JsonKey(name: TradeRequestLiteModel.idKey)
  TradeRequestId get id;
  @override
  @JsonKey(name: TradeRequestLiteModel.requesterIdKey)
  ProfileId get requesterId;
  @override
  @JsonKey(name: TradeRequestLiteModel.ownerIdKey)
  ProfileId get ownerId;
  @override
  @JsonKey(name: TradeRequestLiteModel.bookIdKey)
  BookId get bookId;
  @override
  @JsonKey(name: TradeRequestLiteModel.offeredBookIdKey)
  BookId? get offeredBookId;
  @override
  @JsonKey(name: TradeRequestLiteModel.statusKey)
  String get status;
  @override
  @JsonKey(name: TradeRequestLiteModel.createdAtKey)
  DateTime get createdAt;

  /// Create a copy of TradeRequestLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeRequestLiteModelImplCopyWith<_$TradeRequestLiteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TradeRequestDetailModel _$TradeRequestDetailModelFromJson(
    Map<String, dynamic> json) {
  return _TradeRequestDetailModel.fromJson(json);
}

/// @nodoc
mixin _$TradeRequestDetailModel {
  @JsonKey(name: TradeRequestDetailModel.idKey)
  TradeRequestId get id => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestDetailModel.requesterIdKey)
  ProfileId get requesterId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestDetailModel.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestDetailModel.bookIdKey)
  BookId get bookId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestDetailModel.offeredBookIdKey)
  BookId? get offeredBookId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestDetailModel.statusKey)
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestDetailModel.messageKey)
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestDetailModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestDetailModel.updatedAtKey)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.requesterKey)
  ProfileLiteModel get requester => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.ownerKey)
  ProfileLiteModel get owner => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.bookKey)
  BookLiteModel get book => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.offeredBookKey)
  BookLiteModel? get offeredBook => throw _privateConstructorUsedError;

  /// Serializes this TradeRequestDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeRequestDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeRequestDetailModelCopyWith<TradeRequestDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeRequestDetailModelCopyWith<$Res> {
  factory $TradeRequestDetailModelCopyWith(TradeRequestDetailModel value,
          $Res Function(TradeRequestDetailModel) then) =
      _$TradeRequestDetailModelCopyWithImpl<$Res, TradeRequestDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: TradeRequestDetailModel.idKey) TradeRequestId id,
      @JsonKey(name: TradeRequestDetailModel.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: TradeRequestDetailModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: TradeRequestDetailModel.bookIdKey) BookId bookId,
      @JsonKey(name: TradeRequestDetailModel.offeredBookIdKey)
      BookId? offeredBookId,
      @JsonKey(name: TradeRequestDetailModel.statusKey) String status,
      @JsonKey(name: TradeRequestDetailModel.messageKey) String? message,
      @JsonKey(name: TradeRequestDetailModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: TradeRequestDetailModel.updatedAtKey) DateTime updatedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.requesterKey)
      ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.ownerKey)
      ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.bookKey)
      BookLiteModel book,
      @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.offeredBookKey)
      BookLiteModel? offeredBook});

  $ProfileLiteModelCopyWith<$Res> get requester;
  $ProfileLiteModelCopyWith<$Res> get owner;
  $BookLiteModelCopyWith<$Res> get book;
  $BookLiteModelCopyWith<$Res>? get offeredBook;
}

/// @nodoc
class _$TradeRequestDetailModelCopyWithImpl<$Res,
        $Val extends TradeRequestDetailModel>
    implements $TradeRequestDetailModelCopyWith<$Res> {
  _$TradeRequestDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeRequestDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? bookId = null,
    Object? offeredBookId = freezed,
    Object? status = null,
    Object? message = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? requester = null,
    Object? owner = null,
    Object? book = null,
    Object? offeredBook = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TradeRequestId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      offeredBookId: freezed == offeredBookId
          ? _value.offeredBookId
          : offeredBookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requester: null == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
      offeredBook: freezed == offeredBook
          ? _value.offeredBook
          : offeredBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel?,
    ) as $Val);
  }

  /// Create a copy of TradeRequestDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get requester {
    return $ProfileLiteModelCopyWith<$Res>(_value.requester, (value) {
      return _then(_value.copyWith(requester: value) as $Val);
    });
  }

  /// Create a copy of TradeRequestDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get owner {
    return $ProfileLiteModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of TradeRequestDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookLiteModelCopyWith<$Res> get book {
    return $BookLiteModelCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }

  /// Create a copy of TradeRequestDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookLiteModelCopyWith<$Res>? get offeredBook {
    if (_value.offeredBook == null) {
      return null;
    }

    return $BookLiteModelCopyWith<$Res>(_value.offeredBook!, (value) {
      return _then(_value.copyWith(offeredBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TradeRequestDetailModelImplCopyWith<$Res>
    implements $TradeRequestDetailModelCopyWith<$Res> {
  factory _$$TradeRequestDetailModelImplCopyWith(
          _$TradeRequestDetailModelImpl value,
          $Res Function(_$TradeRequestDetailModelImpl) then) =
      __$$TradeRequestDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: TradeRequestDetailModel.idKey) TradeRequestId id,
      @JsonKey(name: TradeRequestDetailModel.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: TradeRequestDetailModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: TradeRequestDetailModel.bookIdKey) BookId bookId,
      @JsonKey(name: TradeRequestDetailModel.offeredBookIdKey)
      BookId? offeredBookId,
      @JsonKey(name: TradeRequestDetailModel.statusKey) String status,
      @JsonKey(name: TradeRequestDetailModel.messageKey) String? message,
      @JsonKey(name: TradeRequestDetailModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: TradeRequestDetailModel.updatedAtKey) DateTime updatedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.requesterKey)
      ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.ownerKey)
      ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.bookKey)
      BookLiteModel book,
      @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.offeredBookKey)
      BookLiteModel? offeredBook});

  @override
  $ProfileLiteModelCopyWith<$Res> get requester;
  @override
  $ProfileLiteModelCopyWith<$Res> get owner;
  @override
  $BookLiteModelCopyWith<$Res> get book;
  @override
  $BookLiteModelCopyWith<$Res>? get offeredBook;
}

/// @nodoc
class __$$TradeRequestDetailModelImplCopyWithImpl<$Res>
    extends _$TradeRequestDetailModelCopyWithImpl<$Res,
        _$TradeRequestDetailModelImpl>
    implements _$$TradeRequestDetailModelImplCopyWith<$Res> {
  __$$TradeRequestDetailModelImplCopyWithImpl(
      _$TradeRequestDetailModelImpl _value,
      $Res Function(_$TradeRequestDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeRequestDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? bookId = null,
    Object? offeredBookId = freezed,
    Object? status = null,
    Object? message = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? requester = null,
    Object? owner = null,
    Object? book = null,
    Object? offeredBook = freezed,
  }) {
    return _then(_$TradeRequestDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TradeRequestId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      offeredBookId: freezed == offeredBookId
          ? _value.offeredBookId
          : offeredBookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requester: null == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
      offeredBook: freezed == offeredBook
          ? _value.offeredBook
          : offeredBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel?,
    ));
  }
}

/// @nodoc

@TableModel(TradeRequestDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$TradeRequestDetailModelImpl extends _TradeRequestDetailModel {
  const _$TradeRequestDetailModelImpl(
      {@JsonKey(name: TradeRequestDetailModel.idKey) required this.id,
      @JsonKey(name: TradeRequestDetailModel.requesterIdKey)
      required this.requesterId,
      @JsonKey(name: TradeRequestDetailModel.ownerIdKey) required this.ownerId,
      @JsonKey(name: TradeRequestDetailModel.bookIdKey) required this.bookId,
      @JsonKey(name: TradeRequestDetailModel.offeredBookIdKey)
      required this.offeredBookId,
      @JsonKey(name: TradeRequestDetailModel.statusKey) required this.status,
      @JsonKey(name: TradeRequestDetailModel.messageKey) required this.message,
      @JsonKey(name: TradeRequestDetailModel.createdAtKey)
      required this.createdAt,
      @JsonKey(name: TradeRequestDetailModel.updatedAtKey)
      required this.updatedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.requesterKey)
      required this.requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.ownerKey)
      required this.owner,
      @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.bookKey)
      required this.book,
      @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
      @JsonKey(name: TradeRequestDetailModel.offeredBookKey)
      required this.offeredBook})
      : super._();

  factory _$TradeRequestDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeRequestDetailModelImplFromJson(json);

  @override
  @JsonKey(name: TradeRequestDetailModel.idKey)
  final TradeRequestId id;
  @override
  @JsonKey(name: TradeRequestDetailModel.requesterIdKey)
  final ProfileId requesterId;
  @override
  @JsonKey(name: TradeRequestDetailModel.ownerIdKey)
  final ProfileId ownerId;
  @override
  @JsonKey(name: TradeRequestDetailModel.bookIdKey)
  final BookId bookId;
  @override
  @JsonKey(name: TradeRequestDetailModel.offeredBookIdKey)
  final BookId? offeredBookId;
  @override
  @JsonKey(name: TradeRequestDetailModel.statusKey)
  final String status;
  @override
  @JsonKey(name: TradeRequestDetailModel.messageKey)
  final String? message;
  @override
  @JsonKey(name: TradeRequestDetailModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: TradeRequestDetailModel.updatedAtKey)
  final DateTime updatedAt;
  @override
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.requesterKey)
  final ProfileLiteModel requester;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.ownerKey)
  final ProfileLiteModel owner;
  @override
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.bookKey)
  final BookLiteModel book;
  @override
  @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.offeredBookKey)
  final BookLiteModel? offeredBook;

  @override
  String toString() {
    return 'TradeRequestDetailModel(id: $id, requesterId: $requesterId, ownerId: $ownerId, bookId: $bookId, offeredBookId: $offeredBookId, status: $status, message: $message, createdAt: $createdAt, updatedAt: $updatedAt, requester: $requester, owner: $owner, book: $book, offeredBook: $offeredBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeRequestDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.offeredBookId, offeredBookId) ||
                other.offeredBookId == offeredBookId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.requester, requester) ||
                other.requester == requester) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.offeredBook, offeredBook) ||
                other.offeredBook == offeredBook));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      requesterId,
      ownerId,
      bookId,
      offeredBookId,
      status,
      message,
      createdAt,
      updatedAt,
      requester,
      owner,
      book,
      offeredBook);

  /// Create a copy of TradeRequestDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeRequestDetailModelImplCopyWith<_$TradeRequestDetailModelImpl>
      get copyWith => __$$TradeRequestDetailModelImplCopyWithImpl<
          _$TradeRequestDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeRequestDetailModelImplToJson(
      this,
    );
  }
}

abstract class _TradeRequestDetailModel extends TradeRequestDetailModel {
  const factory _TradeRequestDetailModel(
          {@JsonKey(name: TradeRequestDetailModel.idKey)
          required final TradeRequestId id,
          @JsonKey(name: TradeRequestDetailModel.requesterIdKey)
          required final ProfileId requesterId,
          @JsonKey(name: TradeRequestDetailModel.ownerIdKey)
          required final ProfileId ownerId,
          @JsonKey(name: TradeRequestDetailModel.bookIdKey)
          required final BookId bookId,
          @JsonKey(name: TradeRequestDetailModel.offeredBookIdKey)
          required final BookId? offeredBookId,
          @JsonKey(name: TradeRequestDetailModel.statusKey)
          required final String status,
          @JsonKey(name: TradeRequestDetailModel.messageKey)
          required final String? message,
          @JsonKey(name: TradeRequestDetailModel.createdAtKey)
          required final DateTime createdAt,
          @JsonKey(name: TradeRequestDetailModel.updatedAtKey)
          required final DateTime updatedAt,
          @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
          @JsonKey(name: TradeRequestDetailModel.requesterKey)
          required final ProfileLiteModel requester,
          @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
          @JsonKey(name: TradeRequestDetailModel.ownerKey)
          required final ProfileLiteModel owner,
          @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
          @JsonKey(name: TradeRequestDetailModel.bookKey)
          required final BookLiteModel book,
          @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
          @JsonKey(name: TradeRequestDetailModel.offeredBookKey)
          required final BookLiteModel? offeredBook}) =
      _$TradeRequestDetailModelImpl;
  const _TradeRequestDetailModel._() : super._();

  factory _TradeRequestDetailModel.fromJson(Map<String, dynamic> json) =
      _$TradeRequestDetailModelImpl.fromJson;

  @override
  @JsonKey(name: TradeRequestDetailModel.idKey)
  TradeRequestId get id;
  @override
  @JsonKey(name: TradeRequestDetailModel.requesterIdKey)
  ProfileId get requesterId;
  @override
  @JsonKey(name: TradeRequestDetailModel.ownerIdKey)
  ProfileId get ownerId;
  @override
  @JsonKey(name: TradeRequestDetailModel.bookIdKey)
  BookId get bookId;
  @override
  @JsonKey(name: TradeRequestDetailModel.offeredBookIdKey)
  BookId? get offeredBookId;
  @override
  @JsonKey(name: TradeRequestDetailModel.statusKey)
  String get status;
  @override
  @JsonKey(name: TradeRequestDetailModel.messageKey)
  String? get message;
  @override
  @JsonKey(name: TradeRequestDetailModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: TradeRequestDetailModel.updatedAtKey)
  DateTime get updatedAt;
  @override
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.requesterKey)
  ProfileLiteModel get requester;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.ownerKey)
  ProfileLiteModel get owner;
  @override
  @JoinedColumn(foreignKey: "book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.bookKey)
  BookLiteModel get book;
  @override
  @JoinedColumn(foreignKey: "offered_book_id", candidateKey: "id")
  @JsonKey(name: TradeRequestDetailModel.offeredBookKey)
  BookLiteModel? get offeredBook;

  /// Create a copy of TradeRequestDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeRequestDetailModelImplCopyWith<_$TradeRequestDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TradeRequestCreateParam _$TradeRequestCreateParamFromJson(
    Map<String, dynamic> json) {
  return _TradeRequestCreateParam.fromJson(json);
}

/// @nodoc
mixin _$TradeRequestCreateParam {
  @JsonKey(name: TradeRequestCreateParam.requesterIdKey)
  ProfileId get requesterId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestCreateParam.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestCreateParam.bookIdKey)
  BookId get bookId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestCreateParam.offeredBookIdKey)
  BookId? get offeredBookId => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestCreateParam.messageKey)
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this TradeRequestCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeRequestCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeRequestCreateParamCopyWith<TradeRequestCreateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeRequestCreateParamCopyWith<$Res> {
  factory $TradeRequestCreateParamCopyWith(TradeRequestCreateParam value,
          $Res Function(TradeRequestCreateParam) then) =
      _$TradeRequestCreateParamCopyWithImpl<$Res, TradeRequestCreateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: TradeRequestCreateParam.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: TradeRequestCreateParam.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: TradeRequestCreateParam.bookIdKey) BookId bookId,
      @JsonKey(name: TradeRequestCreateParam.offeredBookIdKey)
      BookId? offeredBookId,
      @JsonKey(name: TradeRequestCreateParam.messageKey) String? message});
}

/// @nodoc
class _$TradeRequestCreateParamCopyWithImpl<$Res,
        $Val extends TradeRequestCreateParam>
    implements $TradeRequestCreateParamCopyWith<$Res> {
  _$TradeRequestCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeRequestCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requesterId = null,
    Object? ownerId = null,
    Object? bookId = null,
    Object? offeredBookId = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      offeredBookId: freezed == offeredBookId
          ? _value.offeredBookId
          : offeredBookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeRequestCreateParamImplCopyWith<$Res>
    implements $TradeRequestCreateParamCopyWith<$Res> {
  factory _$$TradeRequestCreateParamImplCopyWith(
          _$TradeRequestCreateParamImpl value,
          $Res Function(_$TradeRequestCreateParamImpl) then) =
      __$$TradeRequestCreateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: TradeRequestCreateParam.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: TradeRequestCreateParam.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: TradeRequestCreateParam.bookIdKey) BookId bookId,
      @JsonKey(name: TradeRequestCreateParam.offeredBookIdKey)
      BookId? offeredBookId,
      @JsonKey(name: TradeRequestCreateParam.messageKey) String? message});
}

/// @nodoc
class __$$TradeRequestCreateParamImplCopyWithImpl<$Res>
    extends _$TradeRequestCreateParamCopyWithImpl<$Res,
        _$TradeRequestCreateParamImpl>
    implements _$$TradeRequestCreateParamImplCopyWith<$Res> {
  __$$TradeRequestCreateParamImplCopyWithImpl(
      _$TradeRequestCreateParamImpl _value,
      $Res Function(_$TradeRequestCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeRequestCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requesterId = null,
    Object? ownerId = null,
    Object? bookId = null,
    Object? offeredBookId = freezed,
    Object? message = freezed,
  }) {
    return _then(_$TradeRequestCreateParamImpl(
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      offeredBookId: freezed == offeredBookId
          ? _value.offeredBookId
          : offeredBookId // ignore: cast_nullable_to_non_nullable
              as BookId?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TradeRequestCreateParamImpl extends _TradeRequestCreateParam {
  const _$TradeRequestCreateParamImpl(
      {@JsonKey(name: TradeRequestCreateParam.requesterIdKey)
      required this.requesterId,
      @JsonKey(name: TradeRequestCreateParam.ownerIdKey) required this.ownerId,
      @JsonKey(name: TradeRequestCreateParam.bookIdKey) required this.bookId,
      @JsonKey(name: TradeRequestCreateParam.offeredBookIdKey)
      required this.offeredBookId,
      @JsonKey(name: TradeRequestCreateParam.messageKey) required this.message})
      : super._();

  factory _$TradeRequestCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeRequestCreateParamImplFromJson(json);

  @override
  @JsonKey(name: TradeRequestCreateParam.requesterIdKey)
  final ProfileId requesterId;
  @override
  @JsonKey(name: TradeRequestCreateParam.ownerIdKey)
  final ProfileId ownerId;
  @override
  @JsonKey(name: TradeRequestCreateParam.bookIdKey)
  final BookId bookId;
  @override
  @JsonKey(name: TradeRequestCreateParam.offeredBookIdKey)
  final BookId? offeredBookId;
  @override
  @JsonKey(name: TradeRequestCreateParam.messageKey)
  final String? message;

  @override
  String toString() {
    return 'TradeRequestCreateParam(requesterId: $requesterId, ownerId: $ownerId, bookId: $bookId, offeredBookId: $offeredBookId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeRequestCreateParamImpl &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.offeredBookId, offeredBookId) ||
                other.offeredBookId == offeredBookId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, requesterId, ownerId, bookId, offeredBookId, message);

  /// Create a copy of TradeRequestCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeRequestCreateParamImplCopyWith<_$TradeRequestCreateParamImpl>
      get copyWith => __$$TradeRequestCreateParamImplCopyWithImpl<
          _$TradeRequestCreateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeRequestCreateParamImplToJson(
      this,
    );
  }
}

abstract class _TradeRequestCreateParam extends TradeRequestCreateParam {
  const factory _TradeRequestCreateParam(
      {@JsonKey(name: TradeRequestCreateParam.requesterIdKey)
      required final ProfileId requesterId,
      @JsonKey(name: TradeRequestCreateParam.ownerIdKey)
      required final ProfileId ownerId,
      @JsonKey(name: TradeRequestCreateParam.bookIdKey)
      required final BookId bookId,
      @JsonKey(name: TradeRequestCreateParam.offeredBookIdKey)
      required final BookId? offeredBookId,
      @JsonKey(name: TradeRequestCreateParam.messageKey)
      required final String? message}) = _$TradeRequestCreateParamImpl;
  const _TradeRequestCreateParam._() : super._();

  factory _TradeRequestCreateParam.fromJson(Map<String, dynamic> json) =
      _$TradeRequestCreateParamImpl.fromJson;

  @override
  @JsonKey(name: TradeRequestCreateParam.requesterIdKey)
  ProfileId get requesterId;
  @override
  @JsonKey(name: TradeRequestCreateParam.ownerIdKey)
  ProfileId get ownerId;
  @override
  @JsonKey(name: TradeRequestCreateParam.bookIdKey)
  BookId get bookId;
  @override
  @JsonKey(name: TradeRequestCreateParam.offeredBookIdKey)
  BookId? get offeredBookId;
  @override
  @JsonKey(name: TradeRequestCreateParam.messageKey)
  String? get message;

  /// Create a copy of TradeRequestCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeRequestCreateParamImplCopyWith<_$TradeRequestCreateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TradeRequestUpdateParam _$TradeRequestUpdateParamFromJson(
    Map<String, dynamic> json) {
  return _TradeRequestUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$TradeRequestUpdateParam {
  @JsonKey(name: TradeRequestUpdateParam.statusKey)
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: TradeRequestUpdateParam.messageKey)
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this TradeRequestUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeRequestUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeRequestUpdateParamCopyWith<TradeRequestUpdateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeRequestUpdateParamCopyWith<$Res> {
  factory $TradeRequestUpdateParamCopyWith(TradeRequestUpdateParam value,
          $Res Function(TradeRequestUpdateParam) then) =
      _$TradeRequestUpdateParamCopyWithImpl<$Res, TradeRequestUpdateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: TradeRequestUpdateParam.statusKey) String? status,
      @JsonKey(name: TradeRequestUpdateParam.messageKey) String? message});
}

/// @nodoc
class _$TradeRequestUpdateParamCopyWithImpl<$Res,
        $Val extends TradeRequestUpdateParam>
    implements $TradeRequestUpdateParamCopyWith<$Res> {
  _$TradeRequestUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeRequestUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeRequestUpdateParamImplCopyWith<$Res>
    implements $TradeRequestUpdateParamCopyWith<$Res> {
  factory _$$TradeRequestUpdateParamImplCopyWith(
          _$TradeRequestUpdateParamImpl value,
          $Res Function(_$TradeRequestUpdateParamImpl) then) =
      __$$TradeRequestUpdateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: TradeRequestUpdateParam.statusKey) String? status,
      @JsonKey(name: TradeRequestUpdateParam.messageKey) String? message});
}

/// @nodoc
class __$$TradeRequestUpdateParamImplCopyWithImpl<$Res>
    extends _$TradeRequestUpdateParamCopyWithImpl<$Res,
        _$TradeRequestUpdateParamImpl>
    implements _$$TradeRequestUpdateParamImplCopyWith<$Res> {
  __$$TradeRequestUpdateParamImplCopyWithImpl(
      _$TradeRequestUpdateParamImpl _value,
      $Res Function(_$TradeRequestUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeRequestUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$TradeRequestUpdateParamImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TradeRequestUpdateParamImpl extends _TradeRequestUpdateParam {
  const _$TradeRequestUpdateParamImpl(
      {@JsonKey(name: TradeRequestUpdateParam.statusKey) required this.status,
      @JsonKey(name: TradeRequestUpdateParam.messageKey) required this.message})
      : super._();

  factory _$TradeRequestUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeRequestUpdateParamImplFromJson(json);

  @override
  @JsonKey(name: TradeRequestUpdateParam.statusKey)
  final String? status;
  @override
  @JsonKey(name: TradeRequestUpdateParam.messageKey)
  final String? message;

  @override
  String toString() {
    return 'TradeRequestUpdateParam(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeRequestUpdateParamImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of TradeRequestUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeRequestUpdateParamImplCopyWith<_$TradeRequestUpdateParamImpl>
      get copyWith => __$$TradeRequestUpdateParamImplCopyWithImpl<
          _$TradeRequestUpdateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeRequestUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _TradeRequestUpdateParam extends TradeRequestUpdateParam {
  const factory _TradeRequestUpdateParam(
      {@JsonKey(name: TradeRequestUpdateParam.statusKey)
      required final String? status,
      @JsonKey(name: TradeRequestUpdateParam.messageKey)
      required final String? message}) = _$TradeRequestUpdateParamImpl;
  const _TradeRequestUpdateParam._() : super._();

  factory _TradeRequestUpdateParam.fromJson(Map<String, dynamic> json) =
      _$TradeRequestUpdateParamImpl.fromJson;

  @override
  @JsonKey(name: TradeRequestUpdateParam.statusKey)
  String? get status;
  @override
  @JsonKey(name: TradeRequestUpdateParam.messageKey)
  String? get message;

  /// Create a copy of TradeRequestUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeRequestUpdateParamImplCopyWith<_$TradeRequestUpdateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
