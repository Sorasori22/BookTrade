// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
  return _BookModel.fromJson(json);
}

/// @nodoc
mixin _$BookModel {
  @JsonKey(name: BookModel.idKey)
  BookId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BookModel.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: BookModel.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: BookModel.authorKey)
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: BookModel.descriptionKey)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: BookModel.imageKey)
  ImageObject? get image => throw _privateConstructorUsedError;
  @JsonKey(name: BookModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: BookModel.updatedAtKey)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: BookModel.ownerKey)
  ProfileLiteModel? get owner => throw _privateConstructorUsedError;

  /// Serializes this BookModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res, BookModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BookModel.idKey) BookId id,
      @JsonKey(name: BookModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: BookModel.titleKey) String title,
      @JsonKey(name: BookModel.authorKey) String author,
      @JsonKey(name: BookModel.descriptionKey) String? description,
      @JsonKey(name: BookModel.imageKey) ImageObject? image,
      @JsonKey(name: BookModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: BookModel.updatedAtKey) DateTime updatedAt,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: BookModel.ownerKey)
      ProfileLiteModel? owner});

  $ProfileLiteModelCopyWith<$Res>? get owner;
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res, $Val extends BookModel>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? title = null,
    Object? author = null,
    Object? description = freezed,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel?,
    ) as $Val);
  }

  /// Create a copy of BookModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $ProfileLiteModelCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookModelImplCopyWith<$Res>
    implements $BookModelCopyWith<$Res> {
  factory _$$BookModelImplCopyWith(
          _$BookModelImpl value, $Res Function(_$BookModelImpl) then) =
      __$$BookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookModel.idKey) BookId id,
      @JsonKey(name: BookModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: BookModel.titleKey) String title,
      @JsonKey(name: BookModel.authorKey) String author,
      @JsonKey(name: BookModel.descriptionKey) String? description,
      @JsonKey(name: BookModel.imageKey) ImageObject? image,
      @JsonKey(name: BookModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: BookModel.updatedAtKey) DateTime updatedAt,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: BookModel.ownerKey)
      ProfileLiteModel? owner});

  @override
  $ProfileLiteModelCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$BookModelImplCopyWithImpl<$Res>
    extends _$BookModelCopyWithImpl<$Res, _$BookModelImpl>
    implements _$$BookModelImplCopyWith<$Res> {
  __$$BookModelImplCopyWithImpl(
      _$BookModelImpl _value, $Res Function(_$BookModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? title = null,
    Object? author = null,
    Object? description = freezed,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? owner = freezed,
  }) {
    return _then(_$BookModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel?,
    ));
  }
}

/// @nodoc

@TableModel(BookModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$BookModelImpl extends _BookModel {
  const _$BookModelImpl(
      {@JsonKey(name: BookModel.idKey) required this.id,
      @JsonKey(name: BookModel.ownerIdKey) required this.ownerId,
      @JsonKey(name: BookModel.titleKey) required this.title,
      @JsonKey(name: BookModel.authorKey) required this.author,
      @JsonKey(name: BookModel.descriptionKey) required this.description,
      @JsonKey(name: BookModel.imageKey) required this.image,
      @JsonKey(name: BookModel.createdAtKey) required this.createdAt,
      @JsonKey(name: BookModel.updatedAtKey) required this.updatedAt,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: BookModel.ownerKey)
      required this.owner})
      : super._();

  factory _$BookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookModelImplFromJson(json);

  @override
  @JsonKey(name: BookModel.idKey)
  final BookId id;
  @override
  @JsonKey(name: BookModel.ownerIdKey)
  final ProfileId ownerId;
  @override
  @JsonKey(name: BookModel.titleKey)
  final String title;
  @override
  @JsonKey(name: BookModel.authorKey)
  final String author;
  @override
  @JsonKey(name: BookModel.descriptionKey)
  final String? description;
  @override
  @JsonKey(name: BookModel.imageKey)
  final ImageObject? image;
  @override
  @JsonKey(name: BookModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: BookModel.updatedAtKey)
  final DateTime updatedAt;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: BookModel.ownerKey)
  final ProfileLiteModel? owner;

  @override
  String toString() {
    return 'BookModel(id: $id, ownerId: $ownerId, title: $title, author: $author, description: $description, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, ownerId, title, author,
      description, image, createdAt, updatedAt, owner);

  /// Create a copy of BookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      __$$BookModelImplCopyWithImpl<_$BookModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookModelImplToJson(
      this,
    );
  }
}

abstract class _BookModel extends BookModel {
  const factory _BookModel(
      {@JsonKey(name: BookModel.idKey) required final BookId id,
      @JsonKey(name: BookModel.ownerIdKey) required final ProfileId ownerId,
      @JsonKey(name: BookModel.titleKey) required final String title,
      @JsonKey(name: BookModel.authorKey) required final String author,
      @JsonKey(name: BookModel.descriptionKey)
      required final String? description,
      @JsonKey(name: BookModel.imageKey) required final ImageObject? image,
      @JsonKey(name: BookModel.createdAtKey) required final DateTime createdAt,
      @JsonKey(name: BookModel.updatedAtKey) required final DateTime updatedAt,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: BookModel.ownerKey)
      required final ProfileLiteModel? owner}) = _$BookModelImpl;
  const _BookModel._() : super._();

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$BookModelImpl.fromJson;

  @override
  @JsonKey(name: BookModel.idKey)
  BookId get id;
  @override
  @JsonKey(name: BookModel.ownerIdKey)
  ProfileId get ownerId;
  @override
  @JsonKey(name: BookModel.titleKey)
  String get title;
  @override
  @JsonKey(name: BookModel.authorKey)
  String get author;
  @override
  @JsonKey(name: BookModel.descriptionKey)
  String? get description;
  @override
  @JsonKey(name: BookModel.imageKey)
  ImageObject? get image;
  @override
  @JsonKey(name: BookModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: BookModel.updatedAtKey)
  DateTime get updatedAt;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: BookModel.ownerKey)
  ProfileLiteModel? get owner;

  /// Create a copy of BookModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookLiteModel _$BookLiteModelFromJson(Map<String, dynamic> json) {
  return _BookLiteModel.fromJson(json);
}

/// @nodoc
mixin _$BookLiteModel {
  @JsonKey(name: BookLiteModel.idKey)
  BookId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BookLiteModel.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: BookLiteModel.authorKey)
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: BookLiteModel.imageKey)
  ImageObject? get image => throw _privateConstructorUsedError;
  @JsonKey(name: BookLiteModel.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;

  /// Serializes this BookLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookLiteModelCopyWith<BookLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookLiteModelCopyWith<$Res> {
  factory $BookLiteModelCopyWith(
          BookLiteModel value, $Res Function(BookLiteModel) then) =
      _$BookLiteModelCopyWithImpl<$Res, BookLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BookLiteModel.idKey) BookId id,
      @JsonKey(name: BookLiteModel.titleKey) String title,
      @JsonKey(name: BookLiteModel.authorKey) String author,
      @JsonKey(name: BookLiteModel.imageKey) ImageObject? image,
      @JsonKey(name: BookLiteModel.ownerIdKey) ProfileId ownerId});
}

/// @nodoc
class _$BookLiteModelCopyWithImpl<$Res, $Val extends BookLiteModel>
    implements $BookLiteModelCopyWith<$Res> {
  _$BookLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? image = freezed,
    Object? ownerId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookLiteModelImplCopyWith<$Res>
    implements $BookLiteModelCopyWith<$Res> {
  factory _$$BookLiteModelImplCopyWith(
          _$BookLiteModelImpl value, $Res Function(_$BookLiteModelImpl) then) =
      __$$BookLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookLiteModel.idKey) BookId id,
      @JsonKey(name: BookLiteModel.titleKey) String title,
      @JsonKey(name: BookLiteModel.authorKey) String author,
      @JsonKey(name: BookLiteModel.imageKey) ImageObject? image,
      @JsonKey(name: BookLiteModel.ownerIdKey) ProfileId ownerId});
}

/// @nodoc
class __$$BookLiteModelImplCopyWithImpl<$Res>
    extends _$BookLiteModelCopyWithImpl<$Res, _$BookLiteModelImpl>
    implements _$$BookLiteModelImplCopyWith<$Res> {
  __$$BookLiteModelImplCopyWithImpl(
      _$BookLiteModelImpl _value, $Res Function(_$BookLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? image = freezed,
    Object? ownerId = null,
  }) {
    return _then(_$BookLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
    ));
  }
}

/// @nodoc

@TableModel(BookLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$BookLiteModelImpl extends _BookLiteModel {
  const _$BookLiteModelImpl(
      {@JsonKey(name: BookLiteModel.idKey) required this.id,
      @JsonKey(name: BookLiteModel.titleKey) required this.title,
      @JsonKey(name: BookLiteModel.authorKey) required this.author,
      @JsonKey(name: BookLiteModel.imageKey) required this.image,
      @JsonKey(name: BookLiteModel.ownerIdKey) required this.ownerId})
      : super._();

  factory _$BookLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookLiteModelImplFromJson(json);

  @override
  @JsonKey(name: BookLiteModel.idKey)
  final BookId id;
  @override
  @JsonKey(name: BookLiteModel.titleKey)
  final String title;
  @override
  @JsonKey(name: BookLiteModel.authorKey)
  final String author;
  @override
  @JsonKey(name: BookLiteModel.imageKey)
  final ImageObject? image;
  @override
  @JsonKey(name: BookLiteModel.ownerIdKey)
  final ProfileId ownerId;

  @override
  String toString() {
    return 'BookLiteModel(id: $id, title: $title, author: $author, image: $image, ownerId: $ownerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, author, image, ownerId);

  /// Create a copy of BookLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookLiteModelImplCopyWith<_$BookLiteModelImpl> get copyWith =>
      __$$BookLiteModelImplCopyWithImpl<_$BookLiteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookLiteModelImplToJson(
      this,
    );
  }
}

abstract class _BookLiteModel extends BookLiteModel {
  const factory _BookLiteModel(
      {@JsonKey(name: BookLiteModel.idKey) required final BookId id,
      @JsonKey(name: BookLiteModel.titleKey) required final String title,
      @JsonKey(name: BookLiteModel.authorKey) required final String author,
      @JsonKey(name: BookLiteModel.imageKey) required final ImageObject? image,
      @JsonKey(name: BookLiteModel.ownerIdKey)
      required final ProfileId ownerId}) = _$BookLiteModelImpl;
  const _BookLiteModel._() : super._();

  factory _BookLiteModel.fromJson(Map<String, dynamic> json) =
      _$BookLiteModelImpl.fromJson;

  @override
  @JsonKey(name: BookLiteModel.idKey)
  BookId get id;
  @override
  @JsonKey(name: BookLiteModel.titleKey)
  String get title;
  @override
  @JsonKey(name: BookLiteModel.authorKey)
  String get author;
  @override
  @JsonKey(name: BookLiteModel.imageKey)
  ImageObject? get image;
  @override
  @JsonKey(name: BookLiteModel.ownerIdKey)
  ProfileId get ownerId;

  /// Create a copy of BookLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookLiteModelImplCopyWith<_$BookLiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookDetailModel _$BookDetailModelFromJson(Map<String, dynamic> json) {
  return _BookDetailModel.fromJson(json);
}

/// @nodoc
mixin _$BookDetailModel {
  @JsonKey(name: BookDetailModel.idKey)
  BookId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BookDetailModel.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: BookDetailModel.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: BookDetailModel.authorKey)
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: BookDetailModel.descriptionKey)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: BookDetailModel.imageKey)
  ImageObject? get image => throw _privateConstructorUsedError;
  @JsonKey(name: BookDetailModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: BookDetailModel.updatedAtKey)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: BookDetailModel.ownerKey)
  ProfileLiteModel? get owner => throw _privateConstructorUsedError;

  /// Serializes this BookDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookDetailModelCopyWith<BookDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailModelCopyWith<$Res> {
  factory $BookDetailModelCopyWith(
          BookDetailModel value, $Res Function(BookDetailModel) then) =
      _$BookDetailModelCopyWithImpl<$Res, BookDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BookDetailModel.idKey) BookId id,
      @JsonKey(name: BookDetailModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: BookDetailModel.titleKey) String title,
      @JsonKey(name: BookDetailModel.authorKey) String author,
      @JsonKey(name: BookDetailModel.descriptionKey) String? description,
      @JsonKey(name: BookDetailModel.imageKey) ImageObject? image,
      @JsonKey(name: BookDetailModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: BookDetailModel.updatedAtKey) DateTime updatedAt,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: BookDetailModel.ownerKey)
      ProfileLiteModel? owner});

  $ProfileLiteModelCopyWith<$Res>? get owner;
}

/// @nodoc
class _$BookDetailModelCopyWithImpl<$Res, $Val extends BookDetailModel>
    implements $BookDetailModelCopyWith<$Res> {
  _$BookDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? title = null,
    Object? author = null,
    Object? description = freezed,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel?,
    ) as $Val);
  }

  /// Create a copy of BookDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $ProfileLiteModelCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookDetailModelImplCopyWith<$Res>
    implements $BookDetailModelCopyWith<$Res> {
  factory _$$BookDetailModelImplCopyWith(_$BookDetailModelImpl value,
          $Res Function(_$BookDetailModelImpl) then) =
      __$$BookDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookDetailModel.idKey) BookId id,
      @JsonKey(name: BookDetailModel.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: BookDetailModel.titleKey) String title,
      @JsonKey(name: BookDetailModel.authorKey) String author,
      @JsonKey(name: BookDetailModel.descriptionKey) String? description,
      @JsonKey(name: BookDetailModel.imageKey) ImageObject? image,
      @JsonKey(name: BookDetailModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: BookDetailModel.updatedAtKey) DateTime updatedAt,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: BookDetailModel.ownerKey)
      ProfileLiteModel? owner});

  @override
  $ProfileLiteModelCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$BookDetailModelImplCopyWithImpl<$Res>
    extends _$BookDetailModelCopyWithImpl<$Res, _$BookDetailModelImpl>
    implements _$$BookDetailModelImplCopyWith<$Res> {
  __$$BookDetailModelImplCopyWithImpl(
      _$BookDetailModelImpl _value, $Res Function(_$BookDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? title = null,
    Object? author = null,
    Object? description = freezed,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? owner = freezed,
  }) {
    return _then(_$BookDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookId,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel?,
    ));
  }
}

/// @nodoc

@TableModel(BookDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$BookDetailModelImpl extends _BookDetailModel {
  const _$BookDetailModelImpl(
      {@JsonKey(name: BookDetailModel.idKey) required this.id,
      @JsonKey(name: BookDetailModel.ownerIdKey) required this.ownerId,
      @JsonKey(name: BookDetailModel.titleKey) required this.title,
      @JsonKey(name: BookDetailModel.authorKey) required this.author,
      @JsonKey(name: BookDetailModel.descriptionKey) required this.description,
      @JsonKey(name: BookDetailModel.imageKey) required this.image,
      @JsonKey(name: BookDetailModel.createdAtKey) required this.createdAt,
      @JsonKey(name: BookDetailModel.updatedAtKey) required this.updatedAt,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: BookDetailModel.ownerKey)
      required this.owner})
      : super._();

  factory _$BookDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookDetailModelImplFromJson(json);

  @override
  @JsonKey(name: BookDetailModel.idKey)
  final BookId id;
  @override
  @JsonKey(name: BookDetailModel.ownerIdKey)
  final ProfileId ownerId;
  @override
  @JsonKey(name: BookDetailModel.titleKey)
  final String title;
  @override
  @JsonKey(name: BookDetailModel.authorKey)
  final String author;
  @override
  @JsonKey(name: BookDetailModel.descriptionKey)
  final String? description;
  @override
  @JsonKey(name: BookDetailModel.imageKey)
  final ImageObject? image;
  @override
  @JsonKey(name: BookDetailModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: BookDetailModel.updatedAtKey)
  final DateTime updatedAt;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: BookDetailModel.ownerKey)
  final ProfileLiteModel? owner;

  @override
  String toString() {
    return 'BookDetailModel(id: $id, ownerId: $ownerId, title: $title, author: $author, description: $description, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, ownerId, title, author,
      description, image, createdAt, updatedAt, owner);

  /// Create a copy of BookDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDetailModelImplCopyWith<_$BookDetailModelImpl> get copyWith =>
      __$$BookDetailModelImplCopyWithImpl<_$BookDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookDetailModelImplToJson(
      this,
    );
  }
}

abstract class _BookDetailModel extends BookDetailModel {
  const factory _BookDetailModel(
      {@JsonKey(name: BookDetailModel.idKey) required final BookId id,
      @JsonKey(name: BookDetailModel.ownerIdKey)
      required final ProfileId ownerId,
      @JsonKey(name: BookDetailModel.titleKey) required final String title,
      @JsonKey(name: BookDetailModel.authorKey) required final String author,
      @JsonKey(name: BookDetailModel.descriptionKey)
      required final String? description,
      @JsonKey(name: BookDetailModel.imageKey)
      required final ImageObject? image,
      @JsonKey(name: BookDetailModel.createdAtKey)
      required final DateTime createdAt,
      @JsonKey(name: BookDetailModel.updatedAtKey)
      required final DateTime updatedAt,
      @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
      @JsonKey(name: BookDetailModel.ownerKey)
      required final ProfileLiteModel? owner}) = _$BookDetailModelImpl;
  const _BookDetailModel._() : super._();

  factory _BookDetailModel.fromJson(Map<String, dynamic> json) =
      _$BookDetailModelImpl.fromJson;

  @override
  @JsonKey(name: BookDetailModel.idKey)
  BookId get id;
  @override
  @JsonKey(name: BookDetailModel.ownerIdKey)
  ProfileId get ownerId;
  @override
  @JsonKey(name: BookDetailModel.titleKey)
  String get title;
  @override
  @JsonKey(name: BookDetailModel.authorKey)
  String get author;
  @override
  @JsonKey(name: BookDetailModel.descriptionKey)
  String? get description;
  @override
  @JsonKey(name: BookDetailModel.imageKey)
  ImageObject? get image;
  @override
  @JsonKey(name: BookDetailModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: BookDetailModel.updatedAtKey)
  DateTime get updatedAt;
  @override
  @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
  @JsonKey(name: BookDetailModel.ownerKey)
  ProfileLiteModel? get owner;

  /// Create a copy of BookDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookDetailModelImplCopyWith<_$BookDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookCreateParam _$BookCreateParamFromJson(Map<String, dynamic> json) {
  return _BookCreateParam.fromJson(json);
}

/// @nodoc
mixin _$BookCreateParam {
  @JsonKey(name: BookCreateParam.ownerIdKey)
  ProfileId get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: BookCreateParam.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: BookCreateParam.authorKey)
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: BookCreateParam.descriptionKey)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: BookCreateParam.imageKey)
  ImageObject? get image => throw _privateConstructorUsedError;

  /// Serializes this BookCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookCreateParamCopyWith<BookCreateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCreateParamCopyWith<$Res> {
  factory $BookCreateParamCopyWith(
          BookCreateParam value, $Res Function(BookCreateParam) then) =
      _$BookCreateParamCopyWithImpl<$Res, BookCreateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: BookCreateParam.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: BookCreateParam.titleKey) String title,
      @JsonKey(name: BookCreateParam.authorKey) String author,
      @JsonKey(name: BookCreateParam.descriptionKey) String? description,
      @JsonKey(name: BookCreateParam.imageKey) ImageObject? image});
}

/// @nodoc
class _$BookCreateParamCopyWithImpl<$Res, $Val extends BookCreateParam>
    implements $BookCreateParamCopyWith<$Res> {
  _$BookCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? title = null,
    Object? author = null,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookCreateParamImplCopyWith<$Res>
    implements $BookCreateParamCopyWith<$Res> {
  factory _$$BookCreateParamImplCopyWith(_$BookCreateParamImpl value,
          $Res Function(_$BookCreateParamImpl) then) =
      __$$BookCreateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookCreateParam.ownerIdKey) ProfileId ownerId,
      @JsonKey(name: BookCreateParam.titleKey) String title,
      @JsonKey(name: BookCreateParam.authorKey) String author,
      @JsonKey(name: BookCreateParam.descriptionKey) String? description,
      @JsonKey(name: BookCreateParam.imageKey) ImageObject? image});
}

/// @nodoc
class __$$BookCreateParamImplCopyWithImpl<$Res>
    extends _$BookCreateParamCopyWithImpl<$Res, _$BookCreateParamImpl>
    implements _$$BookCreateParamImplCopyWith<$Res> {
  __$$BookCreateParamImplCopyWithImpl(
      _$BookCreateParamImpl _value, $Res Function(_$BookCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? title = null,
    Object? author = null,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_$BookCreateParamImpl(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BookCreateParamImpl extends _BookCreateParam {
  const _$BookCreateParamImpl(
      {@JsonKey(name: BookCreateParam.ownerIdKey) required this.ownerId,
      @JsonKey(name: BookCreateParam.titleKey) required this.title,
      @JsonKey(name: BookCreateParam.authorKey) required this.author,
      @JsonKey(name: BookCreateParam.descriptionKey) required this.description,
      @JsonKey(name: BookCreateParam.imageKey) required this.image})
      : super._();

  factory _$BookCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookCreateParamImplFromJson(json);

  @override
  @JsonKey(name: BookCreateParam.ownerIdKey)
  final ProfileId ownerId;
  @override
  @JsonKey(name: BookCreateParam.titleKey)
  final String title;
  @override
  @JsonKey(name: BookCreateParam.authorKey)
  final String author;
  @override
  @JsonKey(name: BookCreateParam.descriptionKey)
  final String? description;
  @override
  @JsonKey(name: BookCreateParam.imageKey)
  final ImageObject? image;

  @override
  String toString() {
    return 'BookCreateParam(ownerId: $ownerId, title: $title, author: $author, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookCreateParamImpl &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ownerId, title, author, description, image);

  /// Create a copy of BookCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookCreateParamImplCopyWith<_$BookCreateParamImpl> get copyWith =>
      __$$BookCreateParamImplCopyWithImpl<_$BookCreateParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookCreateParamImplToJson(
      this,
    );
  }
}

abstract class _BookCreateParam extends BookCreateParam {
  const factory _BookCreateParam(
      {@JsonKey(name: BookCreateParam.ownerIdKey)
      required final ProfileId ownerId,
      @JsonKey(name: BookCreateParam.titleKey) required final String title,
      @JsonKey(name: BookCreateParam.authorKey) required final String author,
      @JsonKey(name: BookCreateParam.descriptionKey)
      required final String? description,
      @JsonKey(name: BookCreateParam.imageKey)
      required final ImageObject? image}) = _$BookCreateParamImpl;
  const _BookCreateParam._() : super._();

  factory _BookCreateParam.fromJson(Map<String, dynamic> json) =
      _$BookCreateParamImpl.fromJson;

  @override
  @JsonKey(name: BookCreateParam.ownerIdKey)
  ProfileId get ownerId;
  @override
  @JsonKey(name: BookCreateParam.titleKey)
  String get title;
  @override
  @JsonKey(name: BookCreateParam.authorKey)
  String get author;
  @override
  @JsonKey(name: BookCreateParam.descriptionKey)
  String? get description;
  @override
  @JsonKey(name: BookCreateParam.imageKey)
  ImageObject? get image;

  /// Create a copy of BookCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookCreateParamImplCopyWith<_$BookCreateParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookUpdateParam _$BookUpdateParamFromJson(Map<String, dynamic> json) {
  return _BookUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$BookUpdateParam {
  @JsonKey(name: BookUpdateParam.titleKey)
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: BookUpdateParam.authorKey)
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: BookUpdateParam.descriptionKey)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: BookUpdateParam.imageKey)
  ImageObject? get image => throw _privateConstructorUsedError;

  /// Serializes this BookUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookUpdateParamCopyWith<BookUpdateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookUpdateParamCopyWith<$Res> {
  factory $BookUpdateParamCopyWith(
          BookUpdateParam value, $Res Function(BookUpdateParam) then) =
      _$BookUpdateParamCopyWithImpl<$Res, BookUpdateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: BookUpdateParam.titleKey) String? title,
      @JsonKey(name: BookUpdateParam.authorKey) String? author,
      @JsonKey(name: BookUpdateParam.descriptionKey) String? description,
      @JsonKey(name: BookUpdateParam.imageKey) ImageObject? image});
}

/// @nodoc
class _$BookUpdateParamCopyWithImpl<$Res, $Val extends BookUpdateParam>
    implements $BookUpdateParamCopyWith<$Res> {
  _$BookUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookUpdateParamImplCopyWith<$Res>
    implements $BookUpdateParamCopyWith<$Res> {
  factory _$$BookUpdateParamImplCopyWith(_$BookUpdateParamImpl value,
          $Res Function(_$BookUpdateParamImpl) then) =
      __$$BookUpdateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookUpdateParam.titleKey) String? title,
      @JsonKey(name: BookUpdateParam.authorKey) String? author,
      @JsonKey(name: BookUpdateParam.descriptionKey) String? description,
      @JsonKey(name: BookUpdateParam.imageKey) ImageObject? image});
}

/// @nodoc
class __$$BookUpdateParamImplCopyWithImpl<$Res>
    extends _$BookUpdateParamCopyWithImpl<$Res, _$BookUpdateParamImpl>
    implements _$$BookUpdateParamImplCopyWith<$Res> {
  __$$BookUpdateParamImplCopyWithImpl(
      _$BookUpdateParamImpl _value, $Res Function(_$BookUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_$BookUpdateParamImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BookUpdateParamImpl extends _BookUpdateParam {
  const _$BookUpdateParamImpl(
      {@JsonKey(name: BookUpdateParam.titleKey) required this.title,
      @JsonKey(name: BookUpdateParam.authorKey) required this.author,
      @JsonKey(name: BookUpdateParam.descriptionKey) required this.description,
      @JsonKey(name: BookUpdateParam.imageKey) required this.image})
      : super._();

  factory _$BookUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookUpdateParamImplFromJson(json);

  @override
  @JsonKey(name: BookUpdateParam.titleKey)
  final String? title;
  @override
  @JsonKey(name: BookUpdateParam.authorKey)
  final String? author;
  @override
  @JsonKey(name: BookUpdateParam.descriptionKey)
  final String? description;
  @override
  @JsonKey(name: BookUpdateParam.imageKey)
  final ImageObject? image;

  @override
  String toString() {
    return 'BookUpdateParam(title: $title, author: $author, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookUpdateParamImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, author, description, image);

  /// Create a copy of BookUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookUpdateParamImplCopyWith<_$BookUpdateParamImpl> get copyWith =>
      __$$BookUpdateParamImplCopyWithImpl<_$BookUpdateParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _BookUpdateParam extends BookUpdateParam {
  const factory _BookUpdateParam(
      {@JsonKey(name: BookUpdateParam.titleKey) required final String? title,
      @JsonKey(name: BookUpdateParam.authorKey) required final String? author,
      @JsonKey(name: BookUpdateParam.descriptionKey)
      required final String? description,
      @JsonKey(name: BookUpdateParam.imageKey)
      required final ImageObject? image}) = _$BookUpdateParamImpl;
  const _BookUpdateParam._() : super._();

  factory _BookUpdateParam.fromJson(Map<String, dynamic> json) =
      _$BookUpdateParamImpl.fromJson;

  @override
  @JsonKey(name: BookUpdateParam.titleKey)
  String? get title;
  @override
  @JsonKey(name: BookUpdateParam.authorKey)
  String? get author;
  @override
  @JsonKey(name: BookUpdateParam.descriptionKey)
  String? get description;
  @override
  @JsonKey(name: BookUpdateParam.imageKey)
  ImageObject? get image;

  /// Create a copy of BookUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookUpdateParamImplCopyWith<_$BookUpdateParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
