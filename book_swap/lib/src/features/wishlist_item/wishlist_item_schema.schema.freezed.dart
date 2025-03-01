// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_item_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishlistItemModel _$WishlistItemModelFromJson(Map<String, dynamic> json) {
  return _WishlistItemModel.fromJson(json);
}

/// @nodoc
mixin _$WishlistItemModel {
  @JsonKey(name: WishlistItemModel.idKey)
  WishlistItemId get id => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemModel.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemModel.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemModel.authorKey)
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemModel.isbnKey)
  String? get isbn => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: WishlistItemModel.userKey)
  ProfileLiteModel get user => throw _privateConstructorUsedError;

  /// Serializes this WishlistItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistItemModelCopyWith<WishlistItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistItemModelCopyWith<$Res> {
  factory $WishlistItemModelCopyWith(
          WishlistItemModel value, $Res Function(WishlistItemModel) then) =
      _$WishlistItemModelCopyWithImpl<$Res, WishlistItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: WishlistItemModel.idKey) WishlistItemId id,
      @JsonKey(name: WishlistItemModel.userIdKey) ProfileId userId,
      @JsonKey(name: WishlistItemModel.titleKey) String title,
      @JsonKey(name: WishlistItemModel.authorKey) String? author,
      @JsonKey(name: WishlistItemModel.isbnKey) String? isbn,
      @JsonKey(name: WishlistItemModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: WishlistItemModel.userKey)
      ProfileLiteModel user});

  $ProfileLiteModelCopyWith<$Res> get user;
}

/// @nodoc
class _$WishlistItemModelCopyWithImpl<$Res, $Val extends WishlistItemModel>
    implements $WishlistItemModelCopyWith<$Res> {
  _$WishlistItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? author = freezed,
    Object? isbn = freezed,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as WishlistItemId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ) as $Val);
  }

  /// Create a copy of WishlistItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get user {
    return $ProfileLiteModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WishlistItemModelImplCopyWith<$Res>
    implements $WishlistItemModelCopyWith<$Res> {
  factory _$$WishlistItemModelImplCopyWith(_$WishlistItemModelImpl value,
          $Res Function(_$WishlistItemModelImpl) then) =
      __$$WishlistItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: WishlistItemModel.idKey) WishlistItemId id,
      @JsonKey(name: WishlistItemModel.userIdKey) ProfileId userId,
      @JsonKey(name: WishlistItemModel.titleKey) String title,
      @JsonKey(name: WishlistItemModel.authorKey) String? author,
      @JsonKey(name: WishlistItemModel.isbnKey) String? isbn,
      @JsonKey(name: WishlistItemModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: WishlistItemModel.userKey)
      ProfileLiteModel user});

  @override
  $ProfileLiteModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$WishlistItemModelImplCopyWithImpl<$Res>
    extends _$WishlistItemModelCopyWithImpl<$Res, _$WishlistItemModelImpl>
    implements _$$WishlistItemModelImplCopyWith<$Res> {
  __$$WishlistItemModelImplCopyWithImpl(_$WishlistItemModelImpl _value,
      $Res Function(_$WishlistItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? author = freezed,
    Object? isbn = freezed,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(_$WishlistItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as WishlistItemId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ));
  }
}

/// @nodoc

@TableModel(WishlistItemModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$WishlistItemModelImpl extends _WishlistItemModel {
  const _$WishlistItemModelImpl(
      {@JsonKey(name: WishlistItemModel.idKey) required this.id,
      @JsonKey(name: WishlistItemModel.userIdKey) required this.userId,
      @JsonKey(name: WishlistItemModel.titleKey) required this.title,
      @JsonKey(name: WishlistItemModel.authorKey) required this.author,
      @JsonKey(name: WishlistItemModel.isbnKey) required this.isbn,
      @JsonKey(name: WishlistItemModel.createdAtKey) required this.createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: WishlistItemModel.userKey)
      required this.user})
      : super._();

  factory _$WishlistItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistItemModelImplFromJson(json);

  @override
  @JsonKey(name: WishlistItemModel.idKey)
  final WishlistItemId id;
  @override
  @JsonKey(name: WishlistItemModel.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: WishlistItemModel.titleKey)
  final String title;
  @override
  @JsonKey(name: WishlistItemModel.authorKey)
  final String? author;
  @override
  @JsonKey(name: WishlistItemModel.isbnKey)
  final String? isbn;
  @override
  @JsonKey(name: WishlistItemModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: WishlistItemModel.userKey)
  final ProfileLiteModel user;

  @override
  String toString() {
    return 'WishlistItemModel(id: $id, userId: $userId, title: $title, author: $author, isbn: $isbn, createdAt: $createdAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, title, author, isbn, createdAt, user);

  /// Create a copy of WishlistItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistItemModelImplCopyWith<_$WishlistItemModelImpl> get copyWith =>
      __$$WishlistItemModelImplCopyWithImpl<_$WishlistItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistItemModelImplToJson(
      this,
    );
  }
}

abstract class _WishlistItemModel extends WishlistItemModel {
  const factory _WishlistItemModel(
      {@JsonKey(name: WishlistItemModel.idKey) required final WishlistItemId id,
      @JsonKey(name: WishlistItemModel.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: WishlistItemModel.titleKey) required final String title,
      @JsonKey(name: WishlistItemModel.authorKey) required final String? author,
      @JsonKey(name: WishlistItemModel.isbnKey) required final String? isbn,
      @JsonKey(name: WishlistItemModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: WishlistItemModel.userKey)
      required final ProfileLiteModel user}) = _$WishlistItemModelImpl;
  const _WishlistItemModel._() : super._();

  factory _WishlistItemModel.fromJson(Map<String, dynamic> json) =
      _$WishlistItemModelImpl.fromJson;

  @override
  @JsonKey(name: WishlistItemModel.idKey)
  WishlistItemId get id;
  @override
  @JsonKey(name: WishlistItemModel.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: WishlistItemModel.titleKey)
  String get title;
  @override
  @JsonKey(name: WishlistItemModel.authorKey)
  String? get author;
  @override
  @JsonKey(name: WishlistItemModel.isbnKey)
  String? get isbn;
  @override
  @JsonKey(name: WishlistItemModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: WishlistItemModel.userKey)
  ProfileLiteModel get user;

  /// Create a copy of WishlistItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistItemModelImplCopyWith<_$WishlistItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishlistItemLiteModel _$WishlistItemLiteModelFromJson(
    Map<String, dynamic> json) {
  return _WishlistItemLiteModel.fromJson(json);
}

/// @nodoc
mixin _$WishlistItemLiteModel {
  @JsonKey(name: WishlistItemLiteModel.idKey)
  WishlistItemId get id => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemLiteModel.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemLiteModel.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemLiteModel.authorKey)
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemLiteModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WishlistItemLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistItemLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistItemLiteModelCopyWith<WishlistItemLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistItemLiteModelCopyWith<$Res> {
  factory $WishlistItemLiteModelCopyWith(WishlistItemLiteModel value,
          $Res Function(WishlistItemLiteModel) then) =
      _$WishlistItemLiteModelCopyWithImpl<$Res, WishlistItemLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: WishlistItemLiteModel.idKey) WishlistItemId id,
      @JsonKey(name: WishlistItemLiteModel.userIdKey) ProfileId userId,
      @JsonKey(name: WishlistItemLiteModel.titleKey) String title,
      @JsonKey(name: WishlistItemLiteModel.authorKey) String? author,
      @JsonKey(name: WishlistItemLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class _$WishlistItemLiteModelCopyWithImpl<$Res,
        $Val extends WishlistItemLiteModel>
    implements $WishlistItemLiteModelCopyWith<$Res> {
  _$WishlistItemLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistItemLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? author = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as WishlistItemId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistItemLiteModelImplCopyWith<$Res>
    implements $WishlistItemLiteModelCopyWith<$Res> {
  factory _$$WishlistItemLiteModelImplCopyWith(
          _$WishlistItemLiteModelImpl value,
          $Res Function(_$WishlistItemLiteModelImpl) then) =
      __$$WishlistItemLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: WishlistItemLiteModel.idKey) WishlistItemId id,
      @JsonKey(name: WishlistItemLiteModel.userIdKey) ProfileId userId,
      @JsonKey(name: WishlistItemLiteModel.titleKey) String title,
      @JsonKey(name: WishlistItemLiteModel.authorKey) String? author,
      @JsonKey(name: WishlistItemLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class __$$WishlistItemLiteModelImplCopyWithImpl<$Res>
    extends _$WishlistItemLiteModelCopyWithImpl<$Res,
        _$WishlistItemLiteModelImpl>
    implements _$$WishlistItemLiteModelImplCopyWith<$Res> {
  __$$WishlistItemLiteModelImplCopyWithImpl(_$WishlistItemLiteModelImpl _value,
      $Res Function(_$WishlistItemLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistItemLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? author = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$WishlistItemLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as WishlistItemId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(WishlistItemLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$WishlistItemLiteModelImpl extends _WishlistItemLiteModel {
  const _$WishlistItemLiteModelImpl(
      {@JsonKey(name: WishlistItemLiteModel.idKey) required this.id,
      @JsonKey(name: WishlistItemLiteModel.userIdKey) required this.userId,
      @JsonKey(name: WishlistItemLiteModel.titleKey) required this.title,
      @JsonKey(name: WishlistItemLiteModel.authorKey) required this.author,
      @JsonKey(name: WishlistItemLiteModel.createdAtKey)
      required this.createdAt})
      : super._();

  factory _$WishlistItemLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistItemLiteModelImplFromJson(json);

  @override
  @JsonKey(name: WishlistItemLiteModel.idKey)
  final WishlistItemId id;
  @override
  @JsonKey(name: WishlistItemLiteModel.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: WishlistItemLiteModel.titleKey)
  final String title;
  @override
  @JsonKey(name: WishlistItemLiteModel.authorKey)
  final String? author;
  @override
  @JsonKey(name: WishlistItemLiteModel.createdAtKey)
  final DateTime createdAt;

  @override
  String toString() {
    return 'WishlistItemLiteModel(id: $id, userId: $userId, title: $title, author: $author, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistItemLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, title, author, createdAt);

  /// Create a copy of WishlistItemLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistItemLiteModelImplCopyWith<_$WishlistItemLiteModelImpl>
      get copyWith => __$$WishlistItemLiteModelImplCopyWithImpl<
          _$WishlistItemLiteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistItemLiteModelImplToJson(
      this,
    );
  }
}

abstract class _WishlistItemLiteModel extends WishlistItemLiteModel {
  const factory _WishlistItemLiteModel(
      {@JsonKey(name: WishlistItemLiteModel.idKey)
      required final WishlistItemId id,
      @JsonKey(name: WishlistItemLiteModel.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: WishlistItemLiteModel.titleKey)
      required final String title,
      @JsonKey(name: WishlistItemLiteModel.authorKey)
      required final String? author,
      @JsonKey(name: WishlistItemLiteModel.createdAtKey)
      required final DateTime createdAt}) = _$WishlistItemLiteModelImpl;
  const _WishlistItemLiteModel._() : super._();

  factory _WishlistItemLiteModel.fromJson(Map<String, dynamic> json) =
      _$WishlistItemLiteModelImpl.fromJson;

  @override
  @JsonKey(name: WishlistItemLiteModel.idKey)
  WishlistItemId get id;
  @override
  @JsonKey(name: WishlistItemLiteModel.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: WishlistItemLiteModel.titleKey)
  String get title;
  @override
  @JsonKey(name: WishlistItemLiteModel.authorKey)
  String? get author;
  @override
  @JsonKey(name: WishlistItemLiteModel.createdAtKey)
  DateTime get createdAt;

  /// Create a copy of WishlistItemLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistItemLiteModelImplCopyWith<_$WishlistItemLiteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WishlistItemDetailModel _$WishlistItemDetailModelFromJson(
    Map<String, dynamic> json) {
  return _WishlistItemDetailModel.fromJson(json);
}

/// @nodoc
mixin _$WishlistItemDetailModel {
  @JsonKey(name: WishlistItemDetailModel.idKey)
  WishlistItemId get id => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemDetailModel.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemDetailModel.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemDetailModel.authorKey)
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemDetailModel.isbnKey)
  String? get isbn => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemDetailModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: WishlistItemDetailModel.userKey)
  ProfileLiteModel get user => throw _privateConstructorUsedError;

  /// Serializes this WishlistItemDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistItemDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistItemDetailModelCopyWith<WishlistItemDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistItemDetailModelCopyWith<$Res> {
  factory $WishlistItemDetailModelCopyWith(WishlistItemDetailModel value,
          $Res Function(WishlistItemDetailModel) then) =
      _$WishlistItemDetailModelCopyWithImpl<$Res, WishlistItemDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: WishlistItemDetailModel.idKey) WishlistItemId id,
      @JsonKey(name: WishlistItemDetailModel.userIdKey) ProfileId userId,
      @JsonKey(name: WishlistItemDetailModel.titleKey) String title,
      @JsonKey(name: WishlistItemDetailModel.authorKey) String? author,
      @JsonKey(name: WishlistItemDetailModel.isbnKey) String? isbn,
      @JsonKey(name: WishlistItemDetailModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: WishlistItemDetailModel.userKey)
      ProfileLiteModel user});

  $ProfileLiteModelCopyWith<$Res> get user;
}

/// @nodoc
class _$WishlistItemDetailModelCopyWithImpl<$Res,
        $Val extends WishlistItemDetailModel>
    implements $WishlistItemDetailModelCopyWith<$Res> {
  _$WishlistItemDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistItemDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? author = freezed,
    Object? isbn = freezed,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as WishlistItemId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ) as $Val);
  }

  /// Create a copy of WishlistItemDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get user {
    return $ProfileLiteModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WishlistItemDetailModelImplCopyWith<$Res>
    implements $WishlistItemDetailModelCopyWith<$Res> {
  factory _$$WishlistItemDetailModelImplCopyWith(
          _$WishlistItemDetailModelImpl value,
          $Res Function(_$WishlistItemDetailModelImpl) then) =
      __$$WishlistItemDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: WishlistItemDetailModel.idKey) WishlistItemId id,
      @JsonKey(name: WishlistItemDetailModel.userIdKey) ProfileId userId,
      @JsonKey(name: WishlistItemDetailModel.titleKey) String title,
      @JsonKey(name: WishlistItemDetailModel.authorKey) String? author,
      @JsonKey(name: WishlistItemDetailModel.isbnKey) String? isbn,
      @JsonKey(name: WishlistItemDetailModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: WishlistItemDetailModel.userKey)
      ProfileLiteModel user});

  @override
  $ProfileLiteModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$WishlistItemDetailModelImplCopyWithImpl<$Res>
    extends _$WishlistItemDetailModelCopyWithImpl<$Res,
        _$WishlistItemDetailModelImpl>
    implements _$$WishlistItemDetailModelImplCopyWith<$Res> {
  __$$WishlistItemDetailModelImplCopyWithImpl(
      _$WishlistItemDetailModelImpl _value,
      $Res Function(_$WishlistItemDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistItemDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? author = freezed,
    Object? isbn = freezed,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(_$WishlistItemDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as WishlistItemId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ));
  }
}

/// @nodoc

@TableModel(WishlistItemDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$WishlistItemDetailModelImpl extends _WishlistItemDetailModel {
  const _$WishlistItemDetailModelImpl(
      {@JsonKey(name: WishlistItemDetailModel.idKey) required this.id,
      @JsonKey(name: WishlistItemDetailModel.userIdKey) required this.userId,
      @JsonKey(name: WishlistItemDetailModel.titleKey) required this.title,
      @JsonKey(name: WishlistItemDetailModel.authorKey) required this.author,
      @JsonKey(name: WishlistItemDetailModel.isbnKey) required this.isbn,
      @JsonKey(name: WishlistItemDetailModel.createdAtKey)
      required this.createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: WishlistItemDetailModel.userKey)
      required this.user})
      : super._();

  factory _$WishlistItemDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistItemDetailModelImplFromJson(json);

  @override
  @JsonKey(name: WishlistItemDetailModel.idKey)
  final WishlistItemId id;
  @override
  @JsonKey(name: WishlistItemDetailModel.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: WishlistItemDetailModel.titleKey)
  final String title;
  @override
  @JsonKey(name: WishlistItemDetailModel.authorKey)
  final String? author;
  @override
  @JsonKey(name: WishlistItemDetailModel.isbnKey)
  final String? isbn;
  @override
  @JsonKey(name: WishlistItemDetailModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: WishlistItemDetailModel.userKey)
  final ProfileLiteModel user;

  @override
  String toString() {
    return 'WishlistItemDetailModel(id: $id, userId: $userId, title: $title, author: $author, isbn: $isbn, createdAt: $createdAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistItemDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, title, author, isbn, createdAt, user);

  /// Create a copy of WishlistItemDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistItemDetailModelImplCopyWith<_$WishlistItemDetailModelImpl>
      get copyWith => __$$WishlistItemDetailModelImplCopyWithImpl<
          _$WishlistItemDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistItemDetailModelImplToJson(
      this,
    );
  }
}

abstract class _WishlistItemDetailModel extends WishlistItemDetailModel {
  const factory _WishlistItemDetailModel(
      {@JsonKey(name: WishlistItemDetailModel.idKey)
      required final WishlistItemId id,
      @JsonKey(name: WishlistItemDetailModel.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: WishlistItemDetailModel.titleKey)
      required final String title,
      @JsonKey(name: WishlistItemDetailModel.authorKey)
      required final String? author,
      @JsonKey(name: WishlistItemDetailModel.isbnKey)
      required final String? isbn,
      @JsonKey(name: WishlistItemDetailModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: WishlistItemDetailModel.userKey)
      required final ProfileLiteModel user}) = _$WishlistItemDetailModelImpl;
  const _WishlistItemDetailModel._() : super._();

  factory _WishlistItemDetailModel.fromJson(Map<String, dynamic> json) =
      _$WishlistItemDetailModelImpl.fromJson;

  @override
  @JsonKey(name: WishlistItemDetailModel.idKey)
  WishlistItemId get id;
  @override
  @JsonKey(name: WishlistItemDetailModel.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: WishlistItemDetailModel.titleKey)
  String get title;
  @override
  @JsonKey(name: WishlistItemDetailModel.authorKey)
  String? get author;
  @override
  @JsonKey(name: WishlistItemDetailModel.isbnKey)
  String? get isbn;
  @override
  @JsonKey(name: WishlistItemDetailModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: WishlistItemDetailModel.userKey)
  ProfileLiteModel get user;

  /// Create a copy of WishlistItemDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistItemDetailModelImplCopyWith<_$WishlistItemDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WishlistItemCreateParam _$WishlistItemCreateParamFromJson(
    Map<String, dynamic> json) {
  return _WishlistItemCreateParam.fromJson(json);
}

/// @nodoc
mixin _$WishlistItemCreateParam {
  @JsonKey(name: WishlistItemCreateParam.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemCreateParam.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemCreateParam.authorKey)
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemCreateParam.isbnKey)
  String? get isbn => throw _privateConstructorUsedError;

  /// Serializes this WishlistItemCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistItemCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistItemCreateParamCopyWith<WishlistItemCreateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistItemCreateParamCopyWith<$Res> {
  factory $WishlistItemCreateParamCopyWith(WishlistItemCreateParam value,
          $Res Function(WishlistItemCreateParam) then) =
      _$WishlistItemCreateParamCopyWithImpl<$Res, WishlistItemCreateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: WishlistItemCreateParam.userIdKey) ProfileId userId,
      @JsonKey(name: WishlistItemCreateParam.titleKey) String title,
      @JsonKey(name: WishlistItemCreateParam.authorKey) String? author,
      @JsonKey(name: WishlistItemCreateParam.isbnKey) String? isbn});
}

/// @nodoc
class _$WishlistItemCreateParamCopyWithImpl<$Res,
        $Val extends WishlistItemCreateParam>
    implements $WishlistItemCreateParamCopyWith<$Res> {
  _$WishlistItemCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistItemCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? title = null,
    Object? author = freezed,
    Object? isbn = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistItemCreateParamImplCopyWith<$Res>
    implements $WishlistItemCreateParamCopyWith<$Res> {
  factory _$$WishlistItemCreateParamImplCopyWith(
          _$WishlistItemCreateParamImpl value,
          $Res Function(_$WishlistItemCreateParamImpl) then) =
      __$$WishlistItemCreateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: WishlistItemCreateParam.userIdKey) ProfileId userId,
      @JsonKey(name: WishlistItemCreateParam.titleKey) String title,
      @JsonKey(name: WishlistItemCreateParam.authorKey) String? author,
      @JsonKey(name: WishlistItemCreateParam.isbnKey) String? isbn});
}

/// @nodoc
class __$$WishlistItemCreateParamImplCopyWithImpl<$Res>
    extends _$WishlistItemCreateParamCopyWithImpl<$Res,
        _$WishlistItemCreateParamImpl>
    implements _$$WishlistItemCreateParamImplCopyWith<$Res> {
  __$$WishlistItemCreateParamImplCopyWithImpl(
      _$WishlistItemCreateParamImpl _value,
      $Res Function(_$WishlistItemCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistItemCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? title = null,
    Object? author = freezed,
    Object? isbn = freezed,
  }) {
    return _then(_$WishlistItemCreateParamImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WishlistItemCreateParamImpl extends _WishlistItemCreateParam {
  const _$WishlistItemCreateParamImpl(
      {@JsonKey(name: WishlistItemCreateParam.userIdKey) required this.userId,
      @JsonKey(name: WishlistItemCreateParam.titleKey) required this.title,
      @JsonKey(name: WishlistItemCreateParam.authorKey) required this.author,
      @JsonKey(name: WishlistItemCreateParam.isbnKey) required this.isbn})
      : super._();

  factory _$WishlistItemCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistItemCreateParamImplFromJson(json);

  @override
  @JsonKey(name: WishlistItemCreateParam.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: WishlistItemCreateParam.titleKey)
  final String title;
  @override
  @JsonKey(name: WishlistItemCreateParam.authorKey)
  final String? author;
  @override
  @JsonKey(name: WishlistItemCreateParam.isbnKey)
  final String? isbn;

  @override
  String toString() {
    return 'WishlistItemCreateParam(userId: $userId, title: $title, author: $author, isbn: $isbn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistItemCreateParamImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.isbn, isbn) || other.isbn == isbn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, title, author, isbn);

  /// Create a copy of WishlistItemCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistItemCreateParamImplCopyWith<_$WishlistItemCreateParamImpl>
      get copyWith => __$$WishlistItemCreateParamImplCopyWithImpl<
          _$WishlistItemCreateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistItemCreateParamImplToJson(
      this,
    );
  }
}

abstract class _WishlistItemCreateParam extends WishlistItemCreateParam {
  const factory _WishlistItemCreateParam(
      {@JsonKey(name: WishlistItemCreateParam.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: WishlistItemCreateParam.titleKey)
      required final String title,
      @JsonKey(name: WishlistItemCreateParam.authorKey)
      required final String? author,
      @JsonKey(name: WishlistItemCreateParam.isbnKey)
      required final String? isbn}) = _$WishlistItemCreateParamImpl;
  const _WishlistItemCreateParam._() : super._();

  factory _WishlistItemCreateParam.fromJson(Map<String, dynamic> json) =
      _$WishlistItemCreateParamImpl.fromJson;

  @override
  @JsonKey(name: WishlistItemCreateParam.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: WishlistItemCreateParam.titleKey)
  String get title;
  @override
  @JsonKey(name: WishlistItemCreateParam.authorKey)
  String? get author;
  @override
  @JsonKey(name: WishlistItemCreateParam.isbnKey)
  String? get isbn;

  /// Create a copy of WishlistItemCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistItemCreateParamImplCopyWith<_$WishlistItemCreateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WishlistItemUpdateParam _$WishlistItemUpdateParamFromJson(
    Map<String, dynamic> json) {
  return _WishlistItemUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$WishlistItemUpdateParam {
  @JsonKey(name: WishlistItemUpdateParam.titleKey)
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemUpdateParam.authorKey)
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: WishlistItemUpdateParam.isbnKey)
  String? get isbn => throw _privateConstructorUsedError;

  /// Serializes this WishlistItemUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistItemUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistItemUpdateParamCopyWith<WishlistItemUpdateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistItemUpdateParamCopyWith<$Res> {
  factory $WishlistItemUpdateParamCopyWith(WishlistItemUpdateParam value,
          $Res Function(WishlistItemUpdateParam) then) =
      _$WishlistItemUpdateParamCopyWithImpl<$Res, WishlistItemUpdateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: WishlistItemUpdateParam.titleKey) String? title,
      @JsonKey(name: WishlistItemUpdateParam.authorKey) String? author,
      @JsonKey(name: WishlistItemUpdateParam.isbnKey) String? isbn});
}

/// @nodoc
class _$WishlistItemUpdateParamCopyWithImpl<$Res,
        $Val extends WishlistItemUpdateParam>
    implements $WishlistItemUpdateParamCopyWith<$Res> {
  _$WishlistItemUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistItemUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? isbn = freezed,
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
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistItemUpdateParamImplCopyWith<$Res>
    implements $WishlistItemUpdateParamCopyWith<$Res> {
  factory _$$WishlistItemUpdateParamImplCopyWith(
          _$WishlistItemUpdateParamImpl value,
          $Res Function(_$WishlistItemUpdateParamImpl) then) =
      __$$WishlistItemUpdateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: WishlistItemUpdateParam.titleKey) String? title,
      @JsonKey(name: WishlistItemUpdateParam.authorKey) String? author,
      @JsonKey(name: WishlistItemUpdateParam.isbnKey) String? isbn});
}

/// @nodoc
class __$$WishlistItemUpdateParamImplCopyWithImpl<$Res>
    extends _$WishlistItemUpdateParamCopyWithImpl<$Res,
        _$WishlistItemUpdateParamImpl>
    implements _$$WishlistItemUpdateParamImplCopyWith<$Res> {
  __$$WishlistItemUpdateParamImplCopyWithImpl(
      _$WishlistItemUpdateParamImpl _value,
      $Res Function(_$WishlistItemUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistItemUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? isbn = freezed,
  }) {
    return _then(_$WishlistItemUpdateParamImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WishlistItemUpdateParamImpl extends _WishlistItemUpdateParam {
  const _$WishlistItemUpdateParamImpl(
      {@JsonKey(name: WishlistItemUpdateParam.titleKey) required this.title,
      @JsonKey(name: WishlistItemUpdateParam.authorKey) required this.author,
      @JsonKey(name: WishlistItemUpdateParam.isbnKey) required this.isbn})
      : super._();

  factory _$WishlistItemUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistItemUpdateParamImplFromJson(json);

  @override
  @JsonKey(name: WishlistItemUpdateParam.titleKey)
  final String? title;
  @override
  @JsonKey(name: WishlistItemUpdateParam.authorKey)
  final String? author;
  @override
  @JsonKey(name: WishlistItemUpdateParam.isbnKey)
  final String? isbn;

  @override
  String toString() {
    return 'WishlistItemUpdateParam(title: $title, author: $author, isbn: $isbn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistItemUpdateParamImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.isbn, isbn) || other.isbn == isbn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, author, isbn);

  /// Create a copy of WishlistItemUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistItemUpdateParamImplCopyWith<_$WishlistItemUpdateParamImpl>
      get copyWith => __$$WishlistItemUpdateParamImplCopyWithImpl<
          _$WishlistItemUpdateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistItemUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _WishlistItemUpdateParam extends WishlistItemUpdateParam {
  const factory _WishlistItemUpdateParam(
      {@JsonKey(name: WishlistItemUpdateParam.titleKey)
      required final String? title,
      @JsonKey(name: WishlistItemUpdateParam.authorKey)
      required final String? author,
      @JsonKey(name: WishlistItemUpdateParam.isbnKey)
      required final String? isbn}) = _$WishlistItemUpdateParamImpl;
  const _WishlistItemUpdateParam._() : super._();

  factory _WishlistItemUpdateParam.fromJson(Map<String, dynamic> json) =
      _$WishlistItemUpdateParamImpl.fromJson;

  @override
  @JsonKey(name: WishlistItemUpdateParam.titleKey)
  String? get title;
  @override
  @JsonKey(name: WishlistItemUpdateParam.authorKey)
  String? get author;
  @override
  @JsonKey(name: WishlistItemUpdateParam.isbnKey)
  String? get isbn;

  /// Create a copy of WishlistItemUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistItemUpdateParamImplCopyWith<_$WishlistItemUpdateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
