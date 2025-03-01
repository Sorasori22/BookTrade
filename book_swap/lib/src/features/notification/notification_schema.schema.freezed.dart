// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  @JsonKey(name: NotificationModel.idKey)
  NotificationId get id => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.contentKey)
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.readKey)
  bool get read => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.relatedTradeIdKey)
  int? get relatedTradeId => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.notificationTypeKey)
  String get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: NotificationModel.userKey)
  ProfileLiteModel get user => throw _privateConstructorUsedError;

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: NotificationModel.idKey) NotificationId id,
      @JsonKey(name: NotificationModel.userIdKey) ProfileId userId,
      @JsonKey(name: NotificationModel.contentKey) String content,
      @JsonKey(name: NotificationModel.readKey) bool read,
      @JsonKey(name: NotificationModel.relatedTradeIdKey) int? relatedTradeId,
      @JsonKey(name: NotificationModel.notificationTypeKey)
      String notificationType,
      @JsonKey(name: NotificationModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: NotificationModel.userKey)
      ProfileLiteModel user});

  $ProfileLiteModelCopyWith<$Res> get user;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? read = null,
    Object? relatedTradeId = freezed,
    Object? notificationType = null,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NotificationId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedTradeId: freezed == relatedTradeId
          ? _value.relatedTradeId
          : relatedTradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
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

  /// Create a copy of NotificationModel
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
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: NotificationModel.idKey) NotificationId id,
      @JsonKey(name: NotificationModel.userIdKey) ProfileId userId,
      @JsonKey(name: NotificationModel.contentKey) String content,
      @JsonKey(name: NotificationModel.readKey) bool read,
      @JsonKey(name: NotificationModel.relatedTradeIdKey) int? relatedTradeId,
      @JsonKey(name: NotificationModel.notificationTypeKey)
      String notificationType,
      @JsonKey(name: NotificationModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: NotificationModel.userKey)
      ProfileLiteModel user});

  @override
  $ProfileLiteModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? read = null,
    Object? relatedTradeId = freezed,
    Object? notificationType = null,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(_$NotificationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NotificationId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedTradeId: freezed == relatedTradeId
          ? _value.relatedTradeId
          : relatedTradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
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

@TableModel(NotificationModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$NotificationModelImpl extends _NotificationModel {
  const _$NotificationModelImpl(
      {@JsonKey(name: NotificationModel.idKey) required this.id,
      @JsonKey(name: NotificationModel.userIdKey) required this.userId,
      @JsonKey(name: NotificationModel.contentKey) required this.content,
      @JsonKey(name: NotificationModel.readKey) required this.read,
      @JsonKey(name: NotificationModel.relatedTradeIdKey)
      required this.relatedTradeId,
      @JsonKey(name: NotificationModel.notificationTypeKey)
      required this.notificationType,
      @JsonKey(name: NotificationModel.createdAtKey) required this.createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: NotificationModel.userKey)
      required this.user})
      : super._();

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  @JsonKey(name: NotificationModel.idKey)
  final NotificationId id;
  @override
  @JsonKey(name: NotificationModel.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: NotificationModel.contentKey)
  final String content;
  @override
  @JsonKey(name: NotificationModel.readKey)
  final bool read;
  @override
  @JsonKey(name: NotificationModel.relatedTradeIdKey)
  final int? relatedTradeId;
  @override
  @JsonKey(name: NotificationModel.notificationTypeKey)
  final String notificationType;
  @override
  @JsonKey(name: NotificationModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: NotificationModel.userKey)
  final ProfileLiteModel user;

  @override
  String toString() {
    return 'NotificationModel(id: $id, userId: $userId, content: $content, read: $read, relatedTradeId: $relatedTradeId, notificationType: $notificationType, createdAt: $createdAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.relatedTradeId, relatedTradeId) ||
                other.relatedTradeId == relatedTradeId) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, content, read,
      relatedTradeId, notificationType, createdAt, user);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel extends NotificationModel {
  const factory _NotificationModel(
      {@JsonKey(name: NotificationModel.idKey) required final NotificationId id,
      @JsonKey(name: NotificationModel.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: NotificationModel.contentKey)
      required final String content,
      @JsonKey(name: NotificationModel.readKey) required final bool read,
      @JsonKey(name: NotificationModel.relatedTradeIdKey)
      required final int? relatedTradeId,
      @JsonKey(name: NotificationModel.notificationTypeKey)
      required final String notificationType,
      @JsonKey(name: NotificationModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: NotificationModel.userKey)
      required final ProfileLiteModel user}) = _$NotificationModelImpl;
  const _NotificationModel._() : super._();

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  @JsonKey(name: NotificationModel.idKey)
  NotificationId get id;
  @override
  @JsonKey(name: NotificationModel.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: NotificationModel.contentKey)
  String get content;
  @override
  @JsonKey(name: NotificationModel.readKey)
  bool get read;
  @override
  @JsonKey(name: NotificationModel.relatedTradeIdKey)
  int? get relatedTradeId;
  @override
  @JsonKey(name: NotificationModel.notificationTypeKey)
  String get notificationType;
  @override
  @JsonKey(name: NotificationModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: NotificationModel.userKey)
  ProfileLiteModel get user;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationLiteModel _$NotificationLiteModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationLiteModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationLiteModel {
  @JsonKey(name: NotificationLiteModel.idKey)
  NotificationId get id => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationLiteModel.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationLiteModel.contentKey)
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationLiteModel.readKey)
  bool get read => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationLiteModel.notificationTypeKey)
  String get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationLiteModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationLiteModelCopyWith<NotificationLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationLiteModelCopyWith<$Res> {
  factory $NotificationLiteModelCopyWith(NotificationLiteModel value,
          $Res Function(NotificationLiteModel) then) =
      _$NotificationLiteModelCopyWithImpl<$Res, NotificationLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: NotificationLiteModel.idKey) NotificationId id,
      @JsonKey(name: NotificationLiteModel.userIdKey) ProfileId userId,
      @JsonKey(name: NotificationLiteModel.contentKey) String content,
      @JsonKey(name: NotificationLiteModel.readKey) bool read,
      @JsonKey(name: NotificationLiteModel.notificationTypeKey)
      String notificationType,
      @JsonKey(name: NotificationLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class _$NotificationLiteModelCopyWithImpl<$Res,
        $Val extends NotificationLiteModel>
    implements $NotificationLiteModelCopyWith<$Res> {
  _$NotificationLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? read = null,
    Object? notificationType = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NotificationId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationLiteModelImplCopyWith<$Res>
    implements $NotificationLiteModelCopyWith<$Res> {
  factory _$$NotificationLiteModelImplCopyWith(
          _$NotificationLiteModelImpl value,
          $Res Function(_$NotificationLiteModelImpl) then) =
      __$$NotificationLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: NotificationLiteModel.idKey) NotificationId id,
      @JsonKey(name: NotificationLiteModel.userIdKey) ProfileId userId,
      @JsonKey(name: NotificationLiteModel.contentKey) String content,
      @JsonKey(name: NotificationLiteModel.readKey) bool read,
      @JsonKey(name: NotificationLiteModel.notificationTypeKey)
      String notificationType,
      @JsonKey(name: NotificationLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class __$$NotificationLiteModelImplCopyWithImpl<$Res>
    extends _$NotificationLiteModelCopyWithImpl<$Res,
        _$NotificationLiteModelImpl>
    implements _$$NotificationLiteModelImplCopyWith<$Res> {
  __$$NotificationLiteModelImplCopyWithImpl(_$NotificationLiteModelImpl _value,
      $Res Function(_$NotificationLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? read = null,
    Object? notificationType = null,
    Object? createdAt = null,
  }) {
    return _then(_$NotificationLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NotificationId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(NotificationLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$NotificationLiteModelImpl extends _NotificationLiteModel {
  const _$NotificationLiteModelImpl(
      {@JsonKey(name: NotificationLiteModel.idKey) required this.id,
      @JsonKey(name: NotificationLiteModel.userIdKey) required this.userId,
      @JsonKey(name: NotificationLiteModel.contentKey) required this.content,
      @JsonKey(name: NotificationLiteModel.readKey) required this.read,
      @JsonKey(name: NotificationLiteModel.notificationTypeKey)
      required this.notificationType,
      @JsonKey(name: NotificationLiteModel.createdAtKey)
      required this.createdAt})
      : super._();

  factory _$NotificationLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationLiteModelImplFromJson(json);

  @override
  @JsonKey(name: NotificationLiteModel.idKey)
  final NotificationId id;
  @override
  @JsonKey(name: NotificationLiteModel.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: NotificationLiteModel.contentKey)
  final String content;
  @override
  @JsonKey(name: NotificationLiteModel.readKey)
  final bool read;
  @override
  @JsonKey(name: NotificationLiteModel.notificationTypeKey)
  final String notificationType;
  @override
  @JsonKey(name: NotificationLiteModel.createdAtKey)
  final DateTime createdAt;

  @override
  String toString() {
    return 'NotificationLiteModel(id: $id, userId: $userId, content: $content, read: $read, notificationType: $notificationType, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, content, read, notificationType, createdAt);

  /// Create a copy of NotificationLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationLiteModelImplCopyWith<_$NotificationLiteModelImpl>
      get copyWith => __$$NotificationLiteModelImplCopyWithImpl<
          _$NotificationLiteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationLiteModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationLiteModel extends NotificationLiteModel {
  const factory _NotificationLiteModel(
      {@JsonKey(name: NotificationLiteModel.idKey)
      required final NotificationId id,
      @JsonKey(name: NotificationLiteModel.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: NotificationLiteModel.contentKey)
      required final String content,
      @JsonKey(name: NotificationLiteModel.readKey) required final bool read,
      @JsonKey(name: NotificationLiteModel.notificationTypeKey)
      required final String notificationType,
      @JsonKey(name: NotificationLiteModel.createdAtKey)
      required final DateTime createdAt}) = _$NotificationLiteModelImpl;
  const _NotificationLiteModel._() : super._();

  factory _NotificationLiteModel.fromJson(Map<String, dynamic> json) =
      _$NotificationLiteModelImpl.fromJson;

  @override
  @JsonKey(name: NotificationLiteModel.idKey)
  NotificationId get id;
  @override
  @JsonKey(name: NotificationLiteModel.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: NotificationLiteModel.contentKey)
  String get content;
  @override
  @JsonKey(name: NotificationLiteModel.readKey)
  bool get read;
  @override
  @JsonKey(name: NotificationLiteModel.notificationTypeKey)
  String get notificationType;
  @override
  @JsonKey(name: NotificationLiteModel.createdAtKey)
  DateTime get createdAt;

  /// Create a copy of NotificationLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationLiteModelImplCopyWith<_$NotificationLiteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationDetailModel _$NotificationDetailModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationDetailModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationDetailModel {
  @JsonKey(name: NotificationDetailModel.idKey)
  NotificationId get id => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationDetailModel.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationDetailModel.contentKey)
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationDetailModel.readKey)
  bool get read => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationDetailModel.relatedTradeIdKey)
  int? get relatedTradeId => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationDetailModel.notificationTypeKey)
  String get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationDetailModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: NotificationDetailModel.userKey)
  ProfileLiteModel get user => throw _privateConstructorUsedError;

  /// Serializes this NotificationDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationDetailModelCopyWith<NotificationDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDetailModelCopyWith<$Res> {
  factory $NotificationDetailModelCopyWith(NotificationDetailModel value,
          $Res Function(NotificationDetailModel) then) =
      _$NotificationDetailModelCopyWithImpl<$Res, NotificationDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: NotificationDetailModel.idKey) NotificationId id,
      @JsonKey(name: NotificationDetailModel.userIdKey) ProfileId userId,
      @JsonKey(name: NotificationDetailModel.contentKey) String content,
      @JsonKey(name: NotificationDetailModel.readKey) bool read,
      @JsonKey(name: NotificationDetailModel.relatedTradeIdKey)
      int? relatedTradeId,
      @JsonKey(name: NotificationDetailModel.notificationTypeKey)
      String notificationType,
      @JsonKey(name: NotificationDetailModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: NotificationDetailModel.userKey)
      ProfileLiteModel user});

  $ProfileLiteModelCopyWith<$Res> get user;
}

/// @nodoc
class _$NotificationDetailModelCopyWithImpl<$Res,
        $Val extends NotificationDetailModel>
    implements $NotificationDetailModelCopyWith<$Res> {
  _$NotificationDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? read = null,
    Object? relatedTradeId = freezed,
    Object? notificationType = null,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NotificationId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedTradeId: freezed == relatedTradeId
          ? _value.relatedTradeId
          : relatedTradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
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

  /// Create a copy of NotificationDetailModel
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
abstract class _$$NotificationDetailModelImplCopyWith<$Res>
    implements $NotificationDetailModelCopyWith<$Res> {
  factory _$$NotificationDetailModelImplCopyWith(
          _$NotificationDetailModelImpl value,
          $Res Function(_$NotificationDetailModelImpl) then) =
      __$$NotificationDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: NotificationDetailModel.idKey) NotificationId id,
      @JsonKey(name: NotificationDetailModel.userIdKey) ProfileId userId,
      @JsonKey(name: NotificationDetailModel.contentKey) String content,
      @JsonKey(name: NotificationDetailModel.readKey) bool read,
      @JsonKey(name: NotificationDetailModel.relatedTradeIdKey)
      int? relatedTradeId,
      @JsonKey(name: NotificationDetailModel.notificationTypeKey)
      String notificationType,
      @JsonKey(name: NotificationDetailModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: NotificationDetailModel.userKey)
      ProfileLiteModel user});

  @override
  $ProfileLiteModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$NotificationDetailModelImplCopyWithImpl<$Res>
    extends _$NotificationDetailModelCopyWithImpl<$Res,
        _$NotificationDetailModelImpl>
    implements _$$NotificationDetailModelImplCopyWith<$Res> {
  __$$NotificationDetailModelImplCopyWithImpl(
      _$NotificationDetailModelImpl _value,
      $Res Function(_$NotificationDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? read = null,
    Object? relatedTradeId = freezed,
    Object? notificationType = null,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(_$NotificationDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NotificationId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedTradeId: freezed == relatedTradeId
          ? _value.relatedTradeId
          : relatedTradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
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

@TableModel(NotificationDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$NotificationDetailModelImpl extends _NotificationDetailModel {
  const _$NotificationDetailModelImpl(
      {@JsonKey(name: NotificationDetailModel.idKey) required this.id,
      @JsonKey(name: NotificationDetailModel.userIdKey) required this.userId,
      @JsonKey(name: NotificationDetailModel.contentKey) required this.content,
      @JsonKey(name: NotificationDetailModel.readKey) required this.read,
      @JsonKey(name: NotificationDetailModel.relatedTradeIdKey)
      required this.relatedTradeId,
      @JsonKey(name: NotificationDetailModel.notificationTypeKey)
      required this.notificationType,
      @JsonKey(name: NotificationDetailModel.createdAtKey)
      required this.createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: NotificationDetailModel.userKey)
      required this.user})
      : super._();

  factory _$NotificationDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDetailModelImplFromJson(json);

  @override
  @JsonKey(name: NotificationDetailModel.idKey)
  final NotificationId id;
  @override
  @JsonKey(name: NotificationDetailModel.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: NotificationDetailModel.contentKey)
  final String content;
  @override
  @JsonKey(name: NotificationDetailModel.readKey)
  final bool read;
  @override
  @JsonKey(name: NotificationDetailModel.relatedTradeIdKey)
  final int? relatedTradeId;
  @override
  @JsonKey(name: NotificationDetailModel.notificationTypeKey)
  final String notificationType;
  @override
  @JsonKey(name: NotificationDetailModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: NotificationDetailModel.userKey)
  final ProfileLiteModel user;

  @override
  String toString() {
    return 'NotificationDetailModel(id: $id, userId: $userId, content: $content, read: $read, relatedTradeId: $relatedTradeId, notificationType: $notificationType, createdAt: $createdAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.relatedTradeId, relatedTradeId) ||
                other.relatedTradeId == relatedTradeId) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, content, read,
      relatedTradeId, notificationType, createdAt, user);

  /// Create a copy of NotificationDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDetailModelImplCopyWith<_$NotificationDetailModelImpl>
      get copyWith => __$$NotificationDetailModelImplCopyWithImpl<
          _$NotificationDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDetailModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationDetailModel extends NotificationDetailModel {
  const factory _NotificationDetailModel(
      {@JsonKey(name: NotificationDetailModel.idKey)
      required final NotificationId id,
      @JsonKey(name: NotificationDetailModel.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: NotificationDetailModel.contentKey)
      required final String content,
      @JsonKey(name: NotificationDetailModel.readKey) required final bool read,
      @JsonKey(name: NotificationDetailModel.relatedTradeIdKey)
      required final int? relatedTradeId,
      @JsonKey(name: NotificationDetailModel.notificationTypeKey)
      required final String notificationType,
      @JsonKey(name: NotificationDetailModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
      @JsonKey(name: NotificationDetailModel.userKey)
      required final ProfileLiteModel user}) = _$NotificationDetailModelImpl;
  const _NotificationDetailModel._() : super._();

  factory _NotificationDetailModel.fromJson(Map<String, dynamic> json) =
      _$NotificationDetailModelImpl.fromJson;

  @override
  @JsonKey(name: NotificationDetailModel.idKey)
  NotificationId get id;
  @override
  @JsonKey(name: NotificationDetailModel.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: NotificationDetailModel.contentKey)
  String get content;
  @override
  @JsonKey(name: NotificationDetailModel.readKey)
  bool get read;
  @override
  @JsonKey(name: NotificationDetailModel.relatedTradeIdKey)
  int? get relatedTradeId;
  @override
  @JsonKey(name: NotificationDetailModel.notificationTypeKey)
  String get notificationType;
  @override
  @JsonKey(name: NotificationDetailModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: "id")
  @JsonKey(name: NotificationDetailModel.userKey)
  ProfileLiteModel get user;

  /// Create a copy of NotificationDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDetailModelImplCopyWith<_$NotificationDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationCreateParam _$NotificationCreateParamFromJson(
    Map<String, dynamic> json) {
  return _NotificationCreateParam.fromJson(json);
}

/// @nodoc
mixin _$NotificationCreateParam {
  @JsonKey(name: NotificationCreateParam.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationCreateParam.contentKey)
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationCreateParam.relatedTradeIdKey)
  int? get relatedTradeId => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationCreateParam.notificationTypeKey)
  String get notificationType => throw _privateConstructorUsedError;

  /// Serializes this NotificationCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationCreateParamCopyWith<NotificationCreateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCreateParamCopyWith<$Res> {
  factory $NotificationCreateParamCopyWith(NotificationCreateParam value,
          $Res Function(NotificationCreateParam) then) =
      _$NotificationCreateParamCopyWithImpl<$Res, NotificationCreateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: NotificationCreateParam.userIdKey) ProfileId userId,
      @JsonKey(name: NotificationCreateParam.contentKey) String content,
      @JsonKey(name: NotificationCreateParam.relatedTradeIdKey)
      int? relatedTradeId,
      @JsonKey(name: NotificationCreateParam.notificationTypeKey)
      String notificationType});
}

/// @nodoc
class _$NotificationCreateParamCopyWithImpl<$Res,
        $Val extends NotificationCreateParam>
    implements $NotificationCreateParamCopyWith<$Res> {
  _$NotificationCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? content = null,
    Object? relatedTradeId = freezed,
    Object? notificationType = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      relatedTradeId: freezed == relatedTradeId
          ? _value.relatedTradeId
          : relatedTradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationCreateParamImplCopyWith<$Res>
    implements $NotificationCreateParamCopyWith<$Res> {
  factory _$$NotificationCreateParamImplCopyWith(
          _$NotificationCreateParamImpl value,
          $Res Function(_$NotificationCreateParamImpl) then) =
      __$$NotificationCreateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: NotificationCreateParam.userIdKey) ProfileId userId,
      @JsonKey(name: NotificationCreateParam.contentKey) String content,
      @JsonKey(name: NotificationCreateParam.relatedTradeIdKey)
      int? relatedTradeId,
      @JsonKey(name: NotificationCreateParam.notificationTypeKey)
      String notificationType});
}

/// @nodoc
class __$$NotificationCreateParamImplCopyWithImpl<$Res>
    extends _$NotificationCreateParamCopyWithImpl<$Res,
        _$NotificationCreateParamImpl>
    implements _$$NotificationCreateParamImplCopyWith<$Res> {
  __$$NotificationCreateParamImplCopyWithImpl(
      _$NotificationCreateParamImpl _value,
      $Res Function(_$NotificationCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? content = null,
    Object? relatedTradeId = freezed,
    Object? notificationType = null,
  }) {
    return _then(_$NotificationCreateParamImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      relatedTradeId: freezed == relatedTradeId
          ? _value.relatedTradeId
          : relatedTradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NotificationCreateParamImpl extends _NotificationCreateParam {
  const _$NotificationCreateParamImpl(
      {@JsonKey(name: NotificationCreateParam.userIdKey) required this.userId,
      @JsonKey(name: NotificationCreateParam.contentKey) required this.content,
      @JsonKey(name: NotificationCreateParam.relatedTradeIdKey)
      required this.relatedTradeId,
      @JsonKey(name: NotificationCreateParam.notificationTypeKey)
      required this.notificationType})
      : super._();

  factory _$NotificationCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationCreateParamImplFromJson(json);

  @override
  @JsonKey(name: NotificationCreateParam.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: NotificationCreateParam.contentKey)
  final String content;
  @override
  @JsonKey(name: NotificationCreateParam.relatedTradeIdKey)
  final int? relatedTradeId;
  @override
  @JsonKey(name: NotificationCreateParam.notificationTypeKey)
  final String notificationType;

  @override
  String toString() {
    return 'NotificationCreateParam(userId: $userId, content: $content, relatedTradeId: $relatedTradeId, notificationType: $notificationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationCreateParamImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.relatedTradeId, relatedTradeId) ||
                other.relatedTradeId == relatedTradeId) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, content, relatedTradeId, notificationType);

  /// Create a copy of NotificationCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationCreateParamImplCopyWith<_$NotificationCreateParamImpl>
      get copyWith => __$$NotificationCreateParamImplCopyWithImpl<
          _$NotificationCreateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationCreateParamImplToJson(
      this,
    );
  }
}

abstract class _NotificationCreateParam extends NotificationCreateParam {
  const factory _NotificationCreateParam(
      {@JsonKey(name: NotificationCreateParam.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: NotificationCreateParam.contentKey)
      required final String content,
      @JsonKey(name: NotificationCreateParam.relatedTradeIdKey)
      required final int? relatedTradeId,
      @JsonKey(name: NotificationCreateParam.notificationTypeKey)
      required final String notificationType}) = _$NotificationCreateParamImpl;
  const _NotificationCreateParam._() : super._();

  factory _NotificationCreateParam.fromJson(Map<String, dynamic> json) =
      _$NotificationCreateParamImpl.fromJson;

  @override
  @JsonKey(name: NotificationCreateParam.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: NotificationCreateParam.contentKey)
  String get content;
  @override
  @JsonKey(name: NotificationCreateParam.relatedTradeIdKey)
  int? get relatedTradeId;
  @override
  @JsonKey(name: NotificationCreateParam.notificationTypeKey)
  String get notificationType;

  /// Create a copy of NotificationCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationCreateParamImplCopyWith<_$NotificationCreateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationUpdateParam _$NotificationUpdateParamFromJson(
    Map<String, dynamic> json) {
  return _NotificationUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$NotificationUpdateParam {
  @JsonKey(name: NotificationUpdateParam.readKey)
  bool? get read => throw _privateConstructorUsedError;

  /// Serializes this NotificationUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationUpdateParamCopyWith<NotificationUpdateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationUpdateParamCopyWith<$Res> {
  factory $NotificationUpdateParamCopyWith(NotificationUpdateParam value,
          $Res Function(NotificationUpdateParam) then) =
      _$NotificationUpdateParamCopyWithImpl<$Res, NotificationUpdateParam>;
  @useResult
  $Res call({@JsonKey(name: NotificationUpdateParam.readKey) bool? read});
}

/// @nodoc
class _$NotificationUpdateParamCopyWithImpl<$Res,
        $Val extends NotificationUpdateParam>
    implements $NotificationUpdateParamCopyWith<$Res> {
  _$NotificationUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? read = freezed,
  }) {
    return _then(_value.copyWith(
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationUpdateParamImplCopyWith<$Res>
    implements $NotificationUpdateParamCopyWith<$Res> {
  factory _$$NotificationUpdateParamImplCopyWith(
          _$NotificationUpdateParamImpl value,
          $Res Function(_$NotificationUpdateParamImpl) then) =
      __$$NotificationUpdateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: NotificationUpdateParam.readKey) bool? read});
}

/// @nodoc
class __$$NotificationUpdateParamImplCopyWithImpl<$Res>
    extends _$NotificationUpdateParamCopyWithImpl<$Res,
        _$NotificationUpdateParamImpl>
    implements _$$NotificationUpdateParamImplCopyWith<$Res> {
  __$$NotificationUpdateParamImplCopyWithImpl(
      _$NotificationUpdateParamImpl _value,
      $Res Function(_$NotificationUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? read = freezed,
  }) {
    return _then(_$NotificationUpdateParamImpl(
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NotificationUpdateParamImpl extends _NotificationUpdateParam {
  const _$NotificationUpdateParamImpl(
      {@JsonKey(name: NotificationUpdateParam.readKey) required this.read})
      : super._();

  factory _$NotificationUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationUpdateParamImplFromJson(json);

  @override
  @JsonKey(name: NotificationUpdateParam.readKey)
  final bool? read;

  @override
  String toString() {
    return 'NotificationUpdateParam(read: $read)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationUpdateParamImpl &&
            (identical(other.read, read) || other.read == read));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, read);

  /// Create a copy of NotificationUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationUpdateParamImplCopyWith<_$NotificationUpdateParamImpl>
      get copyWith => __$$NotificationUpdateParamImplCopyWithImpl<
          _$NotificationUpdateParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _NotificationUpdateParam extends NotificationUpdateParam {
  const factory _NotificationUpdateParam(
      {@JsonKey(name: NotificationUpdateParam.readKey)
      required final bool? read}) = _$NotificationUpdateParamImpl;
  const _NotificationUpdateParam._() : super._();

  factory _NotificationUpdateParam.fromJson(Map<String, dynamic> json) =
      _$NotificationUpdateParamImpl.fromJson;

  @override
  @JsonKey(name: NotificationUpdateParam.readKey)
  bool? get read;

  /// Create a copy of NotificationUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationUpdateParamImplCopyWith<_$NotificationUpdateParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
