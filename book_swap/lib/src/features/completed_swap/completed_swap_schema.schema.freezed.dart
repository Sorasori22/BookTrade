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
  @JoinedColumn(foreignKey: "requester_id", candidateKey: null)
  @JsonKey(name: CompletedSwapModel.requesterKey)
  ProfileLiteModel get requester => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "owner_id", candidateKey: null)
  @JsonKey(name: CompletedSwapModel.ownerKey)
  ProfileLiteModel get owner => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "requester_book_id", candidateKey: null)
  @JsonKey(name: CompletedSwapModel.requesterBookKey)
  BookLiteModel get requesterBook => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "owner_book_id", candidateKey: null)
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
      @JoinedColumn(foreignKey: "requester_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.requesterKey)
      ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.ownerKey)
      ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.requesterBookKey)
      BookLiteModel requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: null)
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
      @JoinedColumn(foreignKey: "requester_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.requesterKey)
      ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.ownerKey)
      ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.requesterBookKey)
      BookLiteModel requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: null)
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
      @JoinedColumn(foreignKey: "requester_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.requesterKey)
      required this.requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.ownerKey)
      required this.owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.requesterBookKey)
      required this.requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: null)
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
  @JoinedColumn(foreignKey: "requester_id", candidateKey: null)
  @JsonKey(name: CompletedSwapModel.requesterKey)
  final ProfileLiteModel requester;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: null)
  @JsonKey(name: CompletedSwapModel.ownerKey)
  final ProfileLiteModel owner;
  @override
  @JoinedColumn(foreignKey: "requester_book_id", candidateKey: null)
  @JsonKey(name: CompletedSwapModel.requesterBookKey)
  final BookLiteModel requesterBook;
  @override
  @JoinedColumn(foreignKey: "owner_book_id", candidateKey: null)
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
      @JoinedColumn(foreignKey: "requester_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.requesterKey)
      required final ProfileLiteModel requester,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.ownerKey)
      required final ProfileLiteModel owner,
      @JoinedColumn(foreignKey: "requester_book_id", candidateKey: null)
      @JsonKey(name: CompletedSwapModel.requesterBookKey)
      required final BookLiteModel requesterBook,
      @JoinedColumn(foreignKey: "owner_book_id", candidateKey: null)
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
  @JoinedColumn(foreignKey: "requester_id", candidateKey: null)
  @JsonKey(name: CompletedSwapModel.requesterKey)
  ProfileLiteModel get requester;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: null)
  @JsonKey(name: CompletedSwapModel.ownerKey)
  ProfileLiteModel get owner;
  @override
  @JoinedColumn(foreignKey: "requester_book_id", candidateKey: null)
  @JsonKey(name: CompletedSwapModel.requesterBookKey)
  BookLiteModel get requesterBook;
  @override
  @JoinedColumn(foreignKey: "owner_book_id", candidateKey: null)
  @JsonKey(name: CompletedSwapModel.ownerBookKey)
  BookLiteModel get ownerBook;

  /// Create a copy of CompletedSwapModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedSwapModelImplCopyWith<_$CompletedSwapModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
