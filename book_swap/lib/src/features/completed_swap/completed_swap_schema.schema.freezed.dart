// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completed_swap_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompletedSwapModel _$CompletedSwapModelFromJson(Map<String, dynamic> json) {
  return _CompletedSwapModel.fromJson(json);
}

/// @nodoc
mixin _$CompletedSwapModel {
  @JsonKey(name: CompletedSwapModel.idKey)
  CompletedSwapId get id => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapModel.requesterIdKey)
  ProfileId get requesterId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapModel.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapModel.requesterBookIdKey)
  BookId get requesterBookId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapModel.ownerBookIdKey)
  BookId get ownerBookId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapModel.tradeRequestIdKey)
  int? get tradeRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapModel.completedAtKey)
  DateTime get completedAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.requesterKey)
  ProfileLiteModel get requester => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.ownerKey)
  ProfileLiteModel get owner => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.requesterBookKey)
  BookLiteModel get requesterBook => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.ownerBookKey)
  BookLiteModel get ownerBook => throw _privateConstructorUsedError;

  /// Serializes this CompletedSwapModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletedSwapModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedSwapModelCopyWith<CompletedSwapModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedSwapModelCopyWith<$Res> {
  factory $CompletedSwapModelCopyWith(
          CompletedSwapModel value, $Res Function(CompletedSwapModel) then) =
      _$CompletedSwapModelCopyWithImpl<$Res, CompletedSwapModel>;
  @useResult
  $Res call(
      {@JsonKey(name: CompletedSwapModel.idKey) CompletedSwapId id,
      @JsonKey(name: CompletedSwapModel.requesterIdKey) ProfileId requesterId,
      @JsonKey(name: CompletedSwapModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: CompletedSwapModel.requesterBookIdKey)
      BookId requesterBookId,
      @JsonKey(name: CompletedSwapModel.ownerBookIdKey) BookId ownerBookId,
      @JsonKey(name: CompletedSwapModel.tradeRequestIdKey) int? tradeRequestId,
      @JsonKey(name: CompletedSwapModel.completedAtKey) DateTime completedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.requesterKey)
      ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.ownerKey)
      ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.requesterBookKey)
      BookLiteModel requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.ownerBookKey)
      BookLiteModel ownerBook});

  $ProfileLiteModelCopyWith<$Res> get requester;
  $ProfileLiteModelCopyWith<$Res> get owner;
  $BookLiteModelCopyWith<$Res> get requesterBook;
  $BookLiteModelCopyWith<$Res> get ownerBook;
}

/// @nodoc
class _$CompletedSwapModelCopyWithImpl<$Res, $Val extends CompletedSwapModel>
    implements $CompletedSwapModelCopyWith<$Res> {
  _$CompletedSwapModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedSwapModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? requesterBookId = null,
    Object? ownerBookId = null,
    Object? tradeRequestId = freezed,
    Object? completedAt = null,
    Object? requester = null,
    Object? owner = null,
    Object? requesterBook = null,
    Object? ownerBook = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CompletedSwapId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      requesterBookId: null == requesterBookId
          ? _value.requesterBookId
          : requesterBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerBookId: null == ownerBookId
          ? _value.ownerBookId
          : ownerBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requester: null == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      requesterBook: null == requesterBook
          ? _value.requesterBook
          : requesterBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
      ownerBook: null == ownerBook
          ? _value.ownerBook
          : ownerBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
    ) as $Val);
  }

  /// Create a copy of CompletedSwapModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get requester {
    return $ProfileLiteModelCopyWith<$Res>(_value.requester, (value) {
      return _then(_value.copyWith(requester: value) as $Val);
    });
  }

  /// Create a copy of CompletedSwapModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get owner {
    return $ProfileLiteModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of CompletedSwapModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookLiteModelCopyWith<$Res> get requesterBook {
    return $BookLiteModelCopyWith<$Res>(_value.requesterBook, (value) {
      return _then(_value.copyWith(requesterBook: value) as $Val);
    });
  }

  /// Create a copy of CompletedSwapModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookLiteModelCopyWith<$Res> get ownerBook {
    return $BookLiteModelCopyWith<$Res>(_value.ownerBook, (value) {
      return _then(_value.copyWith(ownerBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletedSwapModelImplCopyWith<$Res>
    implements $CompletedSwapModelCopyWith<$Res> {
  factory _$$CompletedSwapModelImplCopyWith(_$CompletedSwapModelImpl value,
          $Res Function(_$CompletedSwapModelImpl) then) =
      __$$CompletedSwapModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CompletedSwapModel.idKey) CompletedSwapId id,
      @JsonKey(name: CompletedSwapModel.requesterIdKey) ProfileId requesterId,
      @JsonKey(name: CompletedSwapModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: CompletedSwapModel.requesterBookIdKey)
      BookId requesterBookId,
      @JsonKey(name: CompletedSwapModel.ownerBookIdKey) BookId ownerBookId,
      @JsonKey(name: CompletedSwapModel.tradeRequestIdKey) int? tradeRequestId,
      @JsonKey(name: CompletedSwapModel.completedAtKey) DateTime completedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.requesterKey)
      ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.ownerKey)
      ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.requesterBookKey)
      BookLiteModel requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.ownerBookKey)
      BookLiteModel ownerBook});

  @override
  $ProfileLiteModelCopyWith<$Res> get requester;
  @override
  $ProfileLiteModelCopyWith<$Res> get owner;
  @override
  $BookLiteModelCopyWith<$Res> get requesterBook;
  @override
  $BookLiteModelCopyWith<$Res> get ownerBook;
}

/// @nodoc
class __$$CompletedSwapModelImplCopyWithImpl<$Res>
    extends _$CompletedSwapModelCopyWithImpl<$Res, _$CompletedSwapModelImpl>
    implements _$$CompletedSwapModelImplCopyWith<$Res> {
  __$$CompletedSwapModelImplCopyWithImpl(_$CompletedSwapModelImpl _value,
      $Res Function(_$CompletedSwapModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletedSwapModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? requesterBookId = null,
    Object? ownerBookId = null,
    Object? tradeRequestId = freezed,
    Object? completedAt = null,
    Object? requester = null,
    Object? owner = null,
    Object? requesterBook = null,
    Object? ownerBook = null,
  }) {
    return _then(_$CompletedSwapModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CompletedSwapId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      requesterBookId: null == requesterBookId
          ? _value.requesterBookId
          : requesterBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerBookId: null == ownerBookId
          ? _value.ownerBookId
          : ownerBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requester: null == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      requesterBook: null == requesterBook
          ? _value.requesterBook
          : requesterBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
      ownerBook: null == ownerBook
          ? _value.ownerBook
          : ownerBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
    ));
  }
}

/// @nodoc

@TableModel(CompletedSwapModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$CompletedSwapModelImpl extends _CompletedSwapModel {
  const _$CompletedSwapModelImpl(
      {@JsonKey(name: CompletedSwapModel.idKey) required this.id,
      @JsonKey(name: CompletedSwapModel.requesterIdKey)
      required this.requesterId,
      @JsonKey(name: CompletedSwapModel.ownerIdKey) required this.ownerId,
      @JsonKey(name: CompletedSwapModel.requesterBookIdKey)
      required this.requesterBookId,
      @JsonKey(name: CompletedSwapModel.ownerBookIdKey)
      required this.ownerBookId,
      @JsonKey(name: CompletedSwapModel.tradeRequestIdKey)
      required this.tradeRequestId,
      @JsonKey(name: CompletedSwapModel.completedAtKey)
      required this.completedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.requesterKey)
      required this.requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.ownerKey)
      required this.owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.requesterBookKey)
      required this.requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.ownerBookKey)
      required this.ownerBook})
      : super._();

  factory _$CompletedSwapModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedSwapModelImplFromJson(json);

  @override
  @JsonKey(name: CompletedSwapModel.idKey)
  final CompletedSwapId id;
  @override
  @JsonKey(name: CompletedSwapModel.requesterIdKey)
  final ProfileId requesterId;
  @override
  @JsonKey(name: CompletedSwapModel.ownerIdKey)
  final ProfileId ownerId;
  @override
  @JsonKey(name: CompletedSwapModel.requesterBookIdKey)
  final BookId requesterBookId;
  @override
  @JsonKey(name: CompletedSwapModel.ownerBookIdKey)
  final BookId ownerBookId;
  @override
  @JsonKey(name: CompletedSwapModel.tradeRequestIdKey)
  final int? tradeRequestId;
  @override
  @JsonKey(name: CompletedSwapModel.completedAtKey)
  final DateTime completedAt;
  @override
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.requesterKey)
  final ProfileLiteModel requester;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.ownerKey)
  final ProfileLiteModel owner;
  @override
  @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.requesterBookKey)
  final BookLiteModel requesterBook;
  @override
  @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.ownerBookKey)
  final BookLiteModel ownerBook;

  @override
  String toString() {
    return 'CompletedSwapModel(id: $id, requesterId: $requesterId, ownerId: $ownerId, requesterBookId: $requesterBookId, ownerBookId: $ownerBookId, tradeRequestId: $tradeRequestId, completedAt: $completedAt, requester: $requester, owner: $owner, requesterBook: $requesterBook, ownerBook: $ownerBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedSwapModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.requesterBookId, requesterBookId) ||
                other.requesterBookId == requesterBookId) &&
            (identical(other.ownerBookId, ownerBookId) ||
                other.ownerBookId == ownerBookId) &&
            (identical(other.tradeRequestId, tradeRequestId) ||
                other.tradeRequestId == tradeRequestId) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.requester, requester) ||
                other.requester == requester) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.requesterBook, requesterBook) ||
                other.requesterBook == requesterBook) &&
            (identical(other.ownerBook, ownerBook) ||
                other.ownerBook == ownerBook));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      requesterId,
      ownerId,
      requesterBookId,
      ownerBookId,
      tradeRequestId,
      completedAt,
      requester,
      owner,
      requesterBook,
      ownerBook);

  /// Create a copy of CompletedSwapModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedSwapModelImplCopyWith<_$CompletedSwapModelImpl> get copyWith =>
      __$$CompletedSwapModelImplCopyWithImpl<_$CompletedSwapModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedSwapModelImplToJson(
      this,
    );
  }
}

abstract class _CompletedSwapModel extends CompletedSwapModel {
  const factory _CompletedSwapModel(
      {@JsonKey(name: CompletedSwapModel.idKey)
      required final CompletedSwapId id,
      @JsonKey(name: CompletedSwapModel.requesterIdKey)
      required final ProfileId requesterId,
      @JsonKey(name: CompletedSwapModel.ownerIdKey)
      required final ProfileId ownerId,
      @JsonKey(name: CompletedSwapModel.requesterBookIdKey)
      required final BookId requesterBookId,
      @JsonKey(name: CompletedSwapModel.ownerBookIdKey)
      required final BookId ownerBookId,
      @JsonKey(name: CompletedSwapModel.tradeRequestIdKey)
      required final int? tradeRequestId,
      @JsonKey(name: CompletedSwapModel.completedAtKey)
      required final DateTime completedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.requesterKey)
      required final ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.ownerKey)
      required final ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.requesterBookKey)
      required final BookLiteModel requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapModel.ownerBookKey)
      required final BookLiteModel ownerBook}) = _$CompletedSwapModelImpl;
  const _CompletedSwapModel._() : super._();

  factory _CompletedSwapModel.fromJson(Map<String, dynamic> json) =
      _$CompletedSwapModelImpl.fromJson;

  @override
  @JsonKey(name: CompletedSwapModel.idKey)
  CompletedSwapId get id;
  @override
  @JsonKey(name: CompletedSwapModel.requesterIdKey)
  ProfileId get requesterId;
  @override
  @JsonKey(name: CompletedSwapModel.ownerIdKey)
  ProfileId get ownerId;
  @override
  @JsonKey(name: CompletedSwapModel.requesterBookIdKey)
  BookId get requesterBookId;
  @override
  @JsonKey(name: CompletedSwapModel.ownerBookIdKey)
  BookId get ownerBookId;
  @override
  @JsonKey(name: CompletedSwapModel.tradeRequestIdKey)
  int? get tradeRequestId;
  @override
  @JsonKey(name: CompletedSwapModel.completedAtKey)
  DateTime get completedAt;
  @override
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.requesterKey)
  ProfileLiteModel get requester;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.ownerKey)
  ProfileLiteModel get owner;
  @override
  @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.requesterBookKey)
  BookLiteModel get requesterBook;
  @override
  @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapModel.ownerBookKey)
  BookLiteModel get ownerBook;

  /// Create a copy of CompletedSwapModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedSwapModelImplCopyWith<_$CompletedSwapModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletedSwapLiteModel _$CompletedSwapLiteModelFromJson(
    Map<String, dynamic> json) {
  return _CompletedSwapLiteModel.fromJson(json);
}

/// @nodoc
mixin _$CompletedSwapLiteModel {
  @JsonKey(name: CompletedSwapLiteModel.idKey)
  CompletedSwapId get id => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapLiteModel.requesterIdKey)
  ProfileId get requesterId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapLiteModel.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapLiteModel.requesterBookIdKey)
  BookId get requesterBookId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapLiteModel.ownerBookIdKey)
  BookId get ownerBookId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapLiteModel.completedAtKey)
  DateTime get completedAt => throw _privateConstructorUsedError;

  /// Serializes this CompletedSwapLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletedSwapLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedSwapLiteModelCopyWith<CompletedSwapLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedSwapLiteModelCopyWith<$Res> {
  factory $CompletedSwapLiteModelCopyWith(CompletedSwapLiteModel value,
          $Res Function(CompletedSwapLiteModel) then) =
      _$CompletedSwapLiteModelCopyWithImpl<$Res, CompletedSwapLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: CompletedSwapLiteModel.idKey) CompletedSwapId id,
      @JsonKey(name: CompletedSwapLiteModel.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: CompletedSwapLiteModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: CompletedSwapLiteModel.requesterBookIdKey)
      BookId requesterBookId,
      @JsonKey(name: CompletedSwapLiteModel.ownerBookIdKey) BookId ownerBookId,
      @JsonKey(name: CompletedSwapLiteModel.completedAtKey)
      DateTime completedAt});
}

/// @nodoc
class _$CompletedSwapLiteModelCopyWithImpl<$Res,
        $Val extends CompletedSwapLiteModel>
    implements $CompletedSwapLiteModelCopyWith<$Res> {
  _$CompletedSwapLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedSwapLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? requesterBookId = null,
    Object? ownerBookId = null,
    Object? completedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CompletedSwapId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      requesterBookId: null == requesterBookId
          ? _value.requesterBookId
          : requesterBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerBookId: null == ownerBookId
          ? _value.ownerBookId
          : ownerBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedSwapLiteModelImplCopyWith<$Res>
    implements $CompletedSwapLiteModelCopyWith<$Res> {
  factory _$$CompletedSwapLiteModelImplCopyWith(
          _$CompletedSwapLiteModelImpl value,
          $Res Function(_$CompletedSwapLiteModelImpl) then) =
      __$$CompletedSwapLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CompletedSwapLiteModel.idKey) CompletedSwapId id,
      @JsonKey(name: CompletedSwapLiteModel.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: CompletedSwapLiteModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: CompletedSwapLiteModel.requesterBookIdKey)
      BookId requesterBookId,
      @JsonKey(name: CompletedSwapLiteModel.ownerBookIdKey) BookId ownerBookId,
      @JsonKey(name: CompletedSwapLiteModel.completedAtKey)
      DateTime completedAt});
}

/// @nodoc
class __$$CompletedSwapLiteModelImplCopyWithImpl<$Res>
    extends _$CompletedSwapLiteModelCopyWithImpl<$Res,
        _$CompletedSwapLiteModelImpl>
    implements _$$CompletedSwapLiteModelImplCopyWith<$Res> {
  __$$CompletedSwapLiteModelImplCopyWithImpl(
      _$CompletedSwapLiteModelImpl _value,
      $Res Function(_$CompletedSwapLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletedSwapLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? requesterBookId = null,
    Object? ownerBookId = null,
    Object? completedAt = null,
  }) {
    return _then(_$CompletedSwapLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CompletedSwapId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      requesterBookId: null == requesterBookId
          ? _value.requesterBookId
          : requesterBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerBookId: null == ownerBookId
          ? _value.ownerBookId
          : ownerBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(CompletedSwapLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$CompletedSwapLiteModelImpl extends _CompletedSwapLiteModel {
  const _$CompletedSwapLiteModelImpl(
      {@JsonKey(name: CompletedSwapLiteModel.idKey) required this.id,
      @JsonKey(name: CompletedSwapLiteModel.requesterIdKey)
      required this.requesterId,
      @JsonKey(name: CompletedSwapLiteModel.ownerIdKey) required this.ownerId,
      @JsonKey(name: CompletedSwapLiteModel.requesterBookIdKey)
      required this.requesterBookId,
      @JsonKey(name: CompletedSwapLiteModel.ownerBookIdKey)
      required this.ownerBookId,
      @JsonKey(name: CompletedSwapLiteModel.completedAtKey)
      required this.completedAt})
      : super._();

  factory _$CompletedSwapLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedSwapLiteModelImplFromJson(json);

  @override
  @JsonKey(name: CompletedSwapLiteModel.idKey)
  final CompletedSwapId id;
  @override
  @JsonKey(name: CompletedSwapLiteModel.requesterIdKey)
  final ProfileId requesterId;
  @override
  @JsonKey(name: CompletedSwapLiteModel.ownerIdKey)
  final ProfileId ownerId;
  @override
  @JsonKey(name: CompletedSwapLiteModel.requesterBookIdKey)
  final BookId requesterBookId;
  @override
  @JsonKey(name: CompletedSwapLiteModel.ownerBookIdKey)
  final BookId ownerBookId;
  @override
  @JsonKey(name: CompletedSwapLiteModel.completedAtKey)
  final DateTime completedAt;

  @override
  String toString() {
    return 'CompletedSwapLiteModel(id: $id, requesterId: $requesterId, ownerId: $ownerId, requesterBookId: $requesterBookId, ownerBookId: $ownerBookId, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedSwapLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.requesterBookId, requesterBookId) ||
                other.requesterBookId == requesterBookId) &&
            (identical(other.ownerBookId, ownerBookId) ||
                other.ownerBookId == ownerBookId) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, requesterId, ownerId,
      requesterBookId, ownerBookId, completedAt);

  /// Create a copy of CompletedSwapLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedSwapLiteModelImplCopyWith<_$CompletedSwapLiteModelImpl>
      get copyWith => __$$CompletedSwapLiteModelImplCopyWithImpl<
          _$CompletedSwapLiteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedSwapLiteModelImplToJson(
      this,
    );
  }
}

abstract class _CompletedSwapLiteModel extends CompletedSwapLiteModel {
  const factory _CompletedSwapLiteModel(
      {@JsonKey(name: CompletedSwapLiteModel.idKey)
      required final CompletedSwapId id,
      @JsonKey(name: CompletedSwapLiteModel.requesterIdKey)
      required final ProfileId requesterId,
      @JsonKey(name: CompletedSwapLiteModel.ownerIdKey)
      required final ProfileId ownerId,
      @JsonKey(name: CompletedSwapLiteModel.requesterBookIdKey)
      required final BookId requesterBookId,
      @JsonKey(name: CompletedSwapLiteModel.ownerBookIdKey)
      required final BookId ownerBookId,
      @JsonKey(name: CompletedSwapLiteModel.completedAtKey)
      required final DateTime completedAt}) = _$CompletedSwapLiteModelImpl;
  const _CompletedSwapLiteModel._() : super._();

  factory _CompletedSwapLiteModel.fromJson(Map<String, dynamic> json) =
      _$CompletedSwapLiteModelImpl.fromJson;

  @override
  @JsonKey(name: CompletedSwapLiteModel.idKey)
  CompletedSwapId get id;
  @override
  @JsonKey(name: CompletedSwapLiteModel.requesterIdKey)
  ProfileId get requesterId;
  @override
  @JsonKey(name: CompletedSwapLiteModel.ownerIdKey)
  ProfileId get ownerId;
  @override
  @JsonKey(name: CompletedSwapLiteModel.requesterBookIdKey)
  BookId get requesterBookId;
  @override
  @JsonKey(name: CompletedSwapLiteModel.ownerBookIdKey)
  BookId get ownerBookId;
  @override
  @JsonKey(name: CompletedSwapLiteModel.completedAtKey)
  DateTime get completedAt;

  /// Create a copy of CompletedSwapLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedSwapLiteModelImplCopyWith<_$CompletedSwapLiteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CompletedSwapDetailModel _$CompletedSwapDetailModelFromJson(
    Map<String, dynamic> json) {
  return _CompletedSwapDetailModel.fromJson(json);
}

/// @nodoc
mixin _$CompletedSwapDetailModel {
  @JsonKey(name: CompletedSwapDetailModel.idKey)
  CompletedSwapId get id => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapDetailModel.requesterIdKey)
  ProfileId get requesterId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapDetailModel.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapDetailModel.requesterBookIdKey)
  BookId get requesterBookId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapDetailModel.ownerBookIdKey)
  BookId get ownerBookId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapDetailModel.tradeRequestIdKey)
  int? get tradeRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapDetailModel.completedAtKey)
  DateTime get completedAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.requesterKey)
  ProfileLiteModel get requester => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.ownerKey)
  ProfileLiteModel get owner => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.requesterBookKey)
  BookLiteModel get requesterBook => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.ownerBookKey)
  BookLiteModel get ownerBook => throw _privateConstructorUsedError;

  /// Serializes this CompletedSwapDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletedSwapDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedSwapDetailModelCopyWith<CompletedSwapDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedSwapDetailModelCopyWith<$Res> {
  factory $CompletedSwapDetailModelCopyWith(CompletedSwapDetailModel value,
          $Res Function(CompletedSwapDetailModel) then) =
      _$CompletedSwapDetailModelCopyWithImpl<$Res, CompletedSwapDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: CompletedSwapDetailModel.idKey) CompletedSwapId id,
      @JsonKey(name: CompletedSwapDetailModel.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: CompletedSwapDetailModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: CompletedSwapDetailModel.requesterBookIdKey)
      BookId requesterBookId,
      @JsonKey(name: CompletedSwapDetailModel.ownerBookIdKey)
      BookId ownerBookId,
      @JsonKey(name: CompletedSwapDetailModel.tradeRequestIdKey)
      int? tradeRequestId,
      @JsonKey(name: CompletedSwapDetailModel.completedAtKey)
      DateTime completedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.requesterKey)
      ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.ownerKey)
      ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.requesterBookKey)
      BookLiteModel requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.ownerBookKey)
      BookLiteModel ownerBook});

  $ProfileLiteModelCopyWith<$Res> get requester;
  $ProfileLiteModelCopyWith<$Res> get owner;
  $BookLiteModelCopyWith<$Res> get requesterBook;
  $BookLiteModelCopyWith<$Res> get ownerBook;
}

/// @nodoc
class _$CompletedSwapDetailModelCopyWithImpl<$Res,
        $Val extends CompletedSwapDetailModel>
    implements $CompletedSwapDetailModelCopyWith<$Res> {
  _$CompletedSwapDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedSwapDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? requesterBookId = null,
    Object? ownerBookId = null,
    Object? tradeRequestId = freezed,
    Object? completedAt = null,
    Object? requester = null,
    Object? owner = null,
    Object? requesterBook = null,
    Object? ownerBook = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CompletedSwapId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      requesterBookId: null == requesterBookId
          ? _value.requesterBookId
          : requesterBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerBookId: null == ownerBookId
          ? _value.ownerBookId
          : ownerBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requester: null == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      requesterBook: null == requesterBook
          ? _value.requesterBook
          : requesterBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
      ownerBook: null == ownerBook
          ? _value.ownerBook
          : ownerBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
    ) as $Val);
  }

  /// Create a copy of CompletedSwapDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get requester {
    return $ProfileLiteModelCopyWith<$Res>(_value.requester, (value) {
      return _then(_value.copyWith(requester: value) as $Val);
    });
  }

  /// Create a copy of CompletedSwapDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get owner {
    return $ProfileLiteModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of CompletedSwapDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookLiteModelCopyWith<$Res> get requesterBook {
    return $BookLiteModelCopyWith<$Res>(_value.requesterBook, (value) {
      return _then(_value.copyWith(requesterBook: value) as $Val);
    });
  }

  /// Create a copy of CompletedSwapDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookLiteModelCopyWith<$Res> get ownerBook {
    return $BookLiteModelCopyWith<$Res>(_value.ownerBook, (value) {
      return _then(_value.copyWith(ownerBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletedSwapDetailModelImplCopyWith<$Res>
    implements $CompletedSwapDetailModelCopyWith<$Res> {
  factory _$$CompletedSwapDetailModelImplCopyWith(
          _$CompletedSwapDetailModelImpl value,
          $Res Function(_$CompletedSwapDetailModelImpl) then) =
      __$$CompletedSwapDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CompletedSwapDetailModel.idKey) CompletedSwapId id,
      @JsonKey(name: CompletedSwapDetailModel.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: CompletedSwapDetailModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: CompletedSwapDetailModel.requesterBookIdKey)
      BookId requesterBookId,
      @JsonKey(name: CompletedSwapDetailModel.ownerBookIdKey)
      BookId ownerBookId,
      @JsonKey(name: CompletedSwapDetailModel.tradeRequestIdKey)
      int? tradeRequestId,
      @JsonKey(name: CompletedSwapDetailModel.completedAtKey)
      DateTime completedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.requesterKey)
      ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.ownerKey)
      ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.requesterBookKey)
      BookLiteModel requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.ownerBookKey)
      BookLiteModel ownerBook});

  @override
  $ProfileLiteModelCopyWith<$Res> get requester;
  @override
  $ProfileLiteModelCopyWith<$Res> get owner;
  @override
  $BookLiteModelCopyWith<$Res> get requesterBook;
  @override
  $BookLiteModelCopyWith<$Res> get ownerBook;
}

/// @nodoc
class __$$CompletedSwapDetailModelImplCopyWithImpl<$Res>
    extends _$CompletedSwapDetailModelCopyWithImpl<$Res,
        _$CompletedSwapDetailModelImpl>
    implements _$$CompletedSwapDetailModelImplCopyWith<$Res> {
  __$$CompletedSwapDetailModelImplCopyWithImpl(
      _$CompletedSwapDetailModelImpl _value,
      $Res Function(_$CompletedSwapDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletedSwapDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requesterId = null,
    Object? ownerId = null,
    Object? requesterBookId = null,
    Object? ownerBookId = null,
    Object? tradeRequestId = freezed,
    Object? completedAt = null,
    Object? requester = null,
    Object? owner = null,
    Object? requesterBook = null,
    Object? ownerBook = null,
  }) {
    return _then(_$CompletedSwapDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CompletedSwapId,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      requesterBookId: null == requesterBookId
          ? _value.requesterBookId
          : requesterBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerBookId: null == ownerBookId
          ? _value.ownerBookId
          : ownerBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requester: null == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      requesterBook: null == requesterBook
          ? _value.requesterBook
          : requesterBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
      ownerBook: null == ownerBook
          ? _value.ownerBook
          : ownerBook // ignore: cast_nullable_to_non_nullable
              as BookLiteModel,
    ));
  }
}

/// @nodoc

@TableModel(CompletedSwapDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$CompletedSwapDetailModelImpl extends _CompletedSwapDetailModel {
  const _$CompletedSwapDetailModelImpl(
      {@JsonKey(name: CompletedSwapDetailModel.idKey) required this.id,
      @JsonKey(name: CompletedSwapDetailModel.requesterIdKey)
      required this.requesterId,
      @JsonKey(name: CompletedSwapDetailModel.ownerIdKey) required this.ownerId,
      @JsonKey(name: CompletedSwapDetailModel.requesterBookIdKey)
      required this.requesterBookId,
      @JsonKey(name: CompletedSwapDetailModel.ownerBookIdKey)
      required this.ownerBookId,
      @JsonKey(name: CompletedSwapDetailModel.tradeRequestIdKey)
      required this.tradeRequestId,
      @JsonKey(name: CompletedSwapDetailModel.completedAtKey)
      required this.completedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.requesterKey)
      required this.requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.ownerKey)
      required this.owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.requesterBookKey)
      required this.requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.ownerBookKey)
      required this.ownerBook})
      : super._();

  factory _$CompletedSwapDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedSwapDetailModelImplFromJson(json);

  @override
  @JsonKey(name: CompletedSwapDetailModel.idKey)
  final CompletedSwapId id;
  @override
  @JsonKey(name: CompletedSwapDetailModel.requesterIdKey)
  final ProfileId requesterId;
  @override
  @JsonKey(name: CompletedSwapDetailModel.ownerIdKey)
  final ProfileId ownerId;
  @override
  @JsonKey(name: CompletedSwapDetailModel.requesterBookIdKey)
  final BookId requesterBookId;
  @override
  @JsonKey(name: CompletedSwapDetailModel.ownerBookIdKey)
  final BookId ownerBookId;
  @override
  @JsonKey(name: CompletedSwapDetailModel.tradeRequestIdKey)
  final int? tradeRequestId;
  @override
  @JsonKey(name: CompletedSwapDetailModel.completedAtKey)
  final DateTime completedAt;
  @override
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.requesterKey)
  final ProfileLiteModel requester;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.ownerKey)
  final ProfileLiteModel owner;
  @override
  @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.requesterBookKey)
  final BookLiteModel requesterBook;
  @override
  @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.ownerBookKey)
  final BookLiteModel ownerBook;

  @override
  String toString() {
    return 'CompletedSwapDetailModel(id: $id, requesterId: $requesterId, ownerId: $ownerId, requesterBookId: $requesterBookId, ownerBookId: $ownerBookId, tradeRequestId: $tradeRequestId, completedAt: $completedAt, requester: $requester, owner: $owner, requesterBook: $requesterBook, ownerBook: $ownerBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedSwapDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.requesterBookId, requesterBookId) ||
                other.requesterBookId == requesterBookId) &&
            (identical(other.ownerBookId, ownerBookId) ||
                other.ownerBookId == ownerBookId) &&
            (identical(other.tradeRequestId, tradeRequestId) ||
                other.tradeRequestId == tradeRequestId) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.requester, requester) ||
                other.requester == requester) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.requesterBook, requesterBook) ||
                other.requesterBook == requesterBook) &&
            (identical(other.ownerBook, ownerBook) ||
                other.ownerBook == ownerBook));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      requesterId,
      ownerId,
      requesterBookId,
      ownerBookId,
      tradeRequestId,
      completedAt,
      requester,
      owner,
      requesterBook,
      ownerBook);

  /// Create a copy of CompletedSwapDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedSwapDetailModelImplCopyWith<_$CompletedSwapDetailModelImpl>
      get copyWith => __$$CompletedSwapDetailModelImplCopyWithImpl<
          _$CompletedSwapDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedSwapDetailModelImplToJson(
      this,
    );
  }
}

abstract class _CompletedSwapDetailModel extends CompletedSwapDetailModel {
  const factory _CompletedSwapDetailModel(
      {@JsonKey(name: CompletedSwapDetailModel.idKey)
      required final CompletedSwapId id,
      @JsonKey(name: CompletedSwapDetailModel.requesterIdKey)
      required final ProfileId requesterId,
      @JsonKey(name: CompletedSwapDetailModel.ownerIdKey)
      required final ProfileId ownerId,
      @JsonKey(name: CompletedSwapDetailModel.requesterBookIdKey)
      required final BookId requesterBookId,
      @JsonKey(name: CompletedSwapDetailModel.ownerBookIdKey)
      required final BookId ownerBookId,
      @JsonKey(name: CompletedSwapDetailModel.tradeRequestIdKey)
      required final int? tradeRequestId,
      @JsonKey(name: CompletedSwapDetailModel.completedAtKey)
      required final DateTime completedAt,
      @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.requesterKey)
      required final ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.ownerKey)
      required final ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.requesterBookKey)
      required final BookLiteModel requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
      @JsonKey(name: CompletedSwapDetailModel.ownerBookKey)
      required final BookLiteModel ownerBook}) = _$CompletedSwapDetailModelImpl;
  const _CompletedSwapDetailModel._() : super._();

  factory _CompletedSwapDetailModel.fromJson(Map<String, dynamic> json) =
      _$CompletedSwapDetailModelImpl.fromJson;

  @override
  @JsonKey(name: CompletedSwapDetailModel.idKey)
  CompletedSwapId get id;
  @override
  @JsonKey(name: CompletedSwapDetailModel.requesterIdKey)
  ProfileId get requesterId;
  @override
  @JsonKey(name: CompletedSwapDetailModel.ownerIdKey)
  ProfileId get ownerId;
  @override
  @JsonKey(name: CompletedSwapDetailModel.requesterBookIdKey)
  BookId get requesterBookId;
  @override
  @JsonKey(name: CompletedSwapDetailModel.ownerBookIdKey)
  BookId get ownerBookId;
  @override
  @JsonKey(name: CompletedSwapDetailModel.tradeRequestIdKey)
  int? get tradeRequestId;
  @override
  @JsonKey(name: CompletedSwapDetailModel.completedAtKey)
  DateTime get completedAt;
  @override
  @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.requesterKey)
  ProfileLiteModel get requester;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.ownerKey)
  ProfileLiteModel get owner;
  @override
  @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.requesterBookKey)
  BookLiteModel get requesterBook;
  @override
  @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
  @JsonKey(name: CompletedSwapDetailModel.ownerBookKey)
  BookLiteModel get ownerBook;

  /// Create a copy of CompletedSwapDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedSwapDetailModelImplCopyWith<_$CompletedSwapDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CompletedSwapCreateParam _$CompletedSwapCreateParamFromJson(
    Map<String, dynamic> json) {
  return _CompletedSwapCreateParam.fromJson(json);
}

/// @nodoc
mixin _$CompletedSwapCreateParam {
  @JsonKey(name: CompletedSwapCreateParam.requesterIdKey)
  ProfileId get requesterId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapCreateParam.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapCreateParam.requesterBookIdKey)
  BookId get requesterBookId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapCreateParam.ownerBookIdKey)
  BookId get ownerBookId => throw _privateConstructorUsedError;
  @JsonKey(name: CompletedSwapCreateParam.tradeRequestIdKey)
  int? get tradeRequestId => throw _privateConstructorUsedError;

  /// Serializes this CompletedSwapCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletedSwapCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedSwapCreateParamCopyWith<CompletedSwapCreateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedSwapCreateParamCopyWith<$Res> {
  factory $CompletedSwapCreateParamCopyWith(CompletedSwapCreateParam value,
          $Res Function(CompletedSwapCreateParam) then) =
      _$CompletedSwapCreateParamCopyWithImpl<$Res, CompletedSwapCreateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: CompletedSwapCreateParam.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: CompletedSwapCreateParam.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: CompletedSwapCreateParam.requesterBookIdKey)
      BookId requesterBookId,
      @JsonKey(name: CompletedSwapCreateParam.ownerBookIdKey)
      BookId ownerBookId,
      @JsonKey(name: CompletedSwapCreateParam.tradeRequestIdKey)
      int? tradeRequestId});
}

/// @nodoc
class _$CompletedSwapCreateParamCopyWithImpl<$Res,
        $Val extends CompletedSwapCreateParam>
    implements $CompletedSwapCreateParamCopyWith<$Res> {
  _$CompletedSwapCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedSwapCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requesterId = null,
    Object? ownerId = null,
    Object? requesterBookId = null,
    Object? ownerBookId = null,
    Object? tradeRequestId = freezed,
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
      requesterBookId: null == requesterBookId
          ? _value.requesterBookId
          : requesterBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerBookId: null == ownerBookId
          ? _value.ownerBookId
          : ownerBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedSwapCreateParamImplCopyWith<$Res>
    implements $CompletedSwapCreateParamCopyWith<$Res> {
  factory _$$CompletedSwapCreateParamImplCopyWith(
          _$CompletedSwapCreateParamImpl value,
          $Res Function(_$CompletedSwapCreateParamImpl) then) =
      __$$CompletedSwapCreateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CompletedSwapCreateParam.requesterIdKey)
      ProfileId requesterId,
      @JsonKey(name: CompletedSwapCreateParam.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: CompletedSwapCreateParam.requesterBookIdKey)
      BookId requesterBookId,
      @JsonKey(name: CompletedSwapCreateParam.ownerBookIdKey)
      BookId ownerBookId,
      @JsonKey(name: CompletedSwapCreateParam.tradeRequestIdKey)
      int? tradeRequestId});
}

/// @nodoc
class __$$CompletedSwapCreateParamImplCopyWithImpl<$Res>
    extends _$CompletedSwapCreateParamCopyWithImpl<$Res,
        _$CompletedSwapCreateParamImpl>
    implements _$$CompletedSwapCreateParamImplCopyWith<$Res> {
  __$$CompletedSwapCreateParamImplCopyWithImpl(
      _$CompletedSwapCreateParamImpl _value,
      $Res Function(_$CompletedSwapCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletedSwapCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requesterId = null,
    Object? ownerId = null,
    Object? requesterBookId = null,
    Object? ownerBookId = null,
    Object? tradeRequestId = freezed,
  }) {
    return _then(_$CompletedSwapCreateParamImpl(
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      requesterBookId: null == requesterBookId
          ? _value.requesterBookId
          : requesterBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerBookId: null == ownerBookId
          ? _value.ownerBookId
          : ownerBookId // ignore: cast_nullable_to_non_nullable
              as BookId,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CompletedSwapCreateParamImpl extends _CompletedSwapCreateParam {
  const _$CompletedSwapCreateParamImpl(
      {@JsonKey(name: CompletedSwapCreateParam.requesterIdKey)
      required this.requesterId,
      @JsonKey(name: CompletedSwapCreateParam.ownerIdKey) required this.ownerId,
      @JsonKey(name: CompletedSwapCreateParam.requesterBookIdKey)
      required this.requesterBookId,
      @JsonKey(name: CompletedSwapCreateParam.ownerBookIdKey)
      required this.ownerBookId,
      @JsonKey(name: CompletedSwapCreateParam.tradeRequestIdKey)
      required this.tradeRequestId})
      : super._();

  factory _$CompletedSwapCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedSwapCreateParamImplFromJson(json);

  @override
  @JsonKey(name: CompletedSwapCreateParam.requesterIdKey)
  final ProfileId requesterId;
  @override
  @JsonKey(name: CompletedSwapCreateParam.ownerIdKey)
  final ProfileId ownerId;
  @override
  @JsonKey(name: CompletedSwapCreateParam.requesterBookIdKey)
  final BookId requesterBookId;
  @override
  @JsonKey(name: CompletedSwapCreateParam.ownerBookIdKey)
  final BookId ownerBookId;
  @override
  @JsonKey(name: CompletedSwapCreateParam.tradeRequestIdKey)
  final int? tradeRequestId;

  @override
  String toString() {
    return 'CompletedSwapCreateParam(requesterId: $requesterId, ownerId: $ownerId, requesterBookId: $requesterBookId, ownerBookId: $ownerBookId, tradeRequestId: $tradeRequestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedSwapCreateParamImpl &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.requesterBookId, requesterBookId) ||
                other.requesterBookId == requesterBookId) &&
            (identical(other.ownerBookId, ownerBookId) ||
                other.ownerBookId == ownerBookId) &&
            (identical(other.tradeRequestId, tradeRequestId) ||
                other.tradeRequestId == tradeRequestId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requesterId, ownerId,
      requesterBookId, ownerBookId, tradeRequestId);

  /// Create a copy of CompletedSwapCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedSwapCreateParamImplCopyWith<_$CompletedSwapCreateParamImpl>
      get copyWith => __$$CompletedSwapCreateParamImplCopyWithImpl<
          _$CompletedSwapCreateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedSwapCreateParamImplToJson(
      this,
    );
  }
}

abstract class _CompletedSwapCreateParam extends CompletedSwapCreateParam {
  const factory _CompletedSwapCreateParam(
      {@JsonKey(name: CompletedSwapCreateParam.requesterIdKey)
      required final ProfileId requesterId,
      @JsonKey(name: CompletedSwapCreateParam.ownerIdKey)
      required final ProfileId ownerId,
      @JsonKey(name: CompletedSwapCreateParam.requesterBookIdKey)
      required final BookId requesterBookId,
      @JsonKey(name: CompletedSwapCreateParam.ownerBookIdKey)
      required final BookId ownerBookId,
      @JsonKey(name: CompletedSwapCreateParam.tradeRequestIdKey)
      required final int? tradeRequestId}) = _$CompletedSwapCreateParamImpl;
  const _CompletedSwapCreateParam._() : super._();

  factory _CompletedSwapCreateParam.fromJson(Map<String, dynamic> json) =
      _$CompletedSwapCreateParamImpl.fromJson;

  @override
  @JsonKey(name: CompletedSwapCreateParam.requesterIdKey)
  ProfileId get requesterId;
  @override
  @JsonKey(name: CompletedSwapCreateParam.ownerIdKey)
  ProfileId get ownerId;
  @override
  @JsonKey(name: CompletedSwapCreateParam.requesterBookIdKey)
  BookId get requesterBookId;
  @override
  @JsonKey(name: CompletedSwapCreateParam.ownerBookIdKey)
  BookId get ownerBookId;
  @override
  @JsonKey(name: CompletedSwapCreateParam.tradeRequestIdKey)
  int? get tradeRequestId;

  /// Create a copy of CompletedSwapCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedSwapCreateParamImplCopyWith<_$CompletedSwapCreateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CompletedSwapUpdateParam _$CompletedSwapUpdateParamFromJson(
    Map<String, dynamic> json) {
  return _CompletedSwapUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$CompletedSwapUpdateParam {
  @JsonKey(name: CompletedSwapUpdateParam.completedAtKey)
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this CompletedSwapUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletedSwapUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedSwapUpdateParamCopyWith<CompletedSwapUpdateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedSwapUpdateParamCopyWith<$Res> {
  factory $CompletedSwapUpdateParamCopyWith(CompletedSwapUpdateParam value,
          $Res Function(CompletedSwapUpdateParam) then) =
      _$CompletedSwapUpdateParamCopyWithImpl<$Res, CompletedSwapUpdateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: CompletedSwapUpdateParam.completedAtKey)
      DateTime? completedAt});
}

/// @nodoc
class _$CompletedSwapUpdateParamCopyWithImpl<$Res,
        $Val extends CompletedSwapUpdateParam>
    implements $CompletedSwapUpdateParamCopyWith<$Res> {
  _$CompletedSwapUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedSwapUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedSwapUpdateParamImplCopyWith<$Res>
    implements $CompletedSwapUpdateParamCopyWith<$Res> {
  factory _$$CompletedSwapUpdateParamImplCopyWith(
          _$CompletedSwapUpdateParamImpl value,
          $Res Function(_$CompletedSwapUpdateParamImpl) then) =
      __$$CompletedSwapUpdateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CompletedSwapUpdateParam.completedAtKey)
      DateTime? completedAt});
}

/// @nodoc
class __$$CompletedSwapUpdateParamImplCopyWithImpl<$Res>
    extends _$CompletedSwapUpdateParamCopyWithImpl<$Res,
        _$CompletedSwapUpdateParamImpl>
    implements _$$CompletedSwapUpdateParamImplCopyWith<$Res> {
  __$$CompletedSwapUpdateParamImplCopyWithImpl(
      _$CompletedSwapUpdateParamImpl _value,
      $Res Function(_$CompletedSwapUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletedSwapUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedAt = freezed,
  }) {
    return _then(_$CompletedSwapUpdateParamImpl(
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CompletedSwapUpdateParamImpl extends _CompletedSwapUpdateParam {
  const _$CompletedSwapUpdateParamImpl(
      {@JsonKey(name: CompletedSwapUpdateParam.completedAtKey)
      required this.completedAt})
      : super._();

  factory _$CompletedSwapUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedSwapUpdateParamImplFromJson(json);

  @override
  @JsonKey(name: CompletedSwapUpdateParam.completedAtKey)
  final DateTime? completedAt;

  @override
  String toString() {
    return 'CompletedSwapUpdateParam(completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedSwapUpdateParamImpl &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, completedAt);

  /// Create a copy of CompletedSwapUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedSwapUpdateParamImplCopyWith<_$CompletedSwapUpdateParamImpl>
      get copyWith => __$$CompletedSwapUpdateParamImplCopyWithImpl<
          _$CompletedSwapUpdateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedSwapUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _CompletedSwapUpdateParam extends CompletedSwapUpdateParam {
  const factory _CompletedSwapUpdateParam(
      {@JsonKey(name: CompletedSwapUpdateParam.completedAtKey)
      required final DateTime? completedAt}) = _$CompletedSwapUpdateParamImpl;
  const _CompletedSwapUpdateParam._() : super._();

  factory _CompletedSwapUpdateParam.fromJson(Map<String, dynamic> json) =
      _$CompletedSwapUpdateParamImpl.fromJson;

  @override
  @JsonKey(name: CompletedSwapUpdateParam.completedAtKey)
  DateTime? get completedAt;

  /// Create a copy of CompletedSwapUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedSwapUpdateParamImplCopyWith<_$CompletedSwapUpdateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
