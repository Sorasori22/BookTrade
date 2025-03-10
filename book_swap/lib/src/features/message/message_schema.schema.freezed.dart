// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  @JsonKey(name: MessageModel.idKey)
  MessageId get id => throw _privateConstructorUsedError;
  @JsonKey(name: MessageModel.senderIdKey)
  ProfileId get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: MessageModel.recipientIdKey)
  ProfileId get recipientId => throw _privateConstructorUsedError;
  @JsonKey(name: MessageModel.contentKey)
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: MessageModel.readKey)
  bool get read => throw _privateConstructorUsedError;
  @JsonKey(name: MessageModel.tradeRequestIdKey)
  int? get tradeRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: MessageModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
  @JsonKey(name: MessageModel.senderKey)
  ProfileLiteModel get sender => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
  @JsonKey(name: MessageModel.recipientKey)
  ProfileLiteModel get recipient => throw _privateConstructorUsedError;

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: MessageModel.idKey) MessageId id,
      @JsonKey(name: MessageModel.senderIdKey) ProfileId senderId,
      @JsonKey(name: MessageModel.recipientIdKey) ProfileId recipientId,
      @JsonKey(name: MessageModel.contentKey) String content,
      @JsonKey(name: MessageModel.readKey) bool read,
      @JsonKey(name: MessageModel.tradeRequestIdKey) int? tradeRequestId,
      @JsonKey(name: MessageModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
      @JsonKey(name: MessageModel.senderKey)
      ProfileLiteModel sender,
      @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
      @JsonKey(name: MessageModel.recipientKey)
      ProfileLiteModel recipient});

  $ProfileLiteModelCopyWith<$Res> get sender;
  $ProfileLiteModelCopyWith<$Res> get recipient;
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
    Object? read = null,
    Object? tradeRequestId = freezed,
    Object? createdAt = null,
    Object? sender = null,
    Object? recipient = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageId,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ) as $Val);
  }

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get sender {
    return $ProfileLiteModelCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get recipient {
    return $ProfileLiteModelCopyWith<$Res>(_value.recipient, (value) {
      return _then(_value.copyWith(recipient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageModelImplCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$MessageModelImplCopyWith(
          _$MessageModelImpl value, $Res Function(_$MessageModelImpl) then) =
      __$$MessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: MessageModel.idKey) MessageId id,
      @JsonKey(name: MessageModel.senderIdKey) ProfileId senderId,
      @JsonKey(name: MessageModel.recipientIdKey) ProfileId recipientId,
      @JsonKey(name: MessageModel.contentKey) String content,
      @JsonKey(name: MessageModel.readKey) bool read,
      @JsonKey(name: MessageModel.tradeRequestIdKey) int? tradeRequestId,
      @JsonKey(name: MessageModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
      @JsonKey(name: MessageModel.senderKey)
      ProfileLiteModel sender,
      @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
      @JsonKey(name: MessageModel.recipientKey)
      ProfileLiteModel recipient});

  @override
  $ProfileLiteModelCopyWith<$Res> get sender;
  @override
  $ProfileLiteModelCopyWith<$Res> get recipient;
}

/// @nodoc
class __$$MessageModelImplCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$MessageModelImpl>
    implements _$$MessageModelImplCopyWith<$Res> {
  __$$MessageModelImplCopyWithImpl(
      _$MessageModelImpl _value, $Res Function(_$MessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
    Object? read = null,
    Object? tradeRequestId = freezed,
    Object? createdAt = null,
    Object? sender = null,
    Object? recipient = null,
  }) {
    return _then(_$MessageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageId,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ));
  }
}

/// @nodoc

@TableModel(MessageModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$MessageModelImpl extends _MessageModel {
  const _$MessageModelImpl(
      {@JsonKey(name: MessageModel.idKey) required this.id,
      @JsonKey(name: MessageModel.senderIdKey) required this.senderId,
      @JsonKey(name: MessageModel.recipientIdKey) required this.recipientId,
      @JsonKey(name: MessageModel.contentKey) required this.content,
      @JsonKey(name: MessageModel.readKey) required this.read,
      @JsonKey(name: MessageModel.tradeRequestIdKey)
      required this.tradeRequestId,
      @JsonKey(name: MessageModel.createdAtKey) required this.createdAt,
      @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
      @JsonKey(name: MessageModel.senderKey)
      required this.sender,
      @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
      @JsonKey(name: MessageModel.recipientKey)
      required this.recipient})
      : super._();

  factory _$MessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelImplFromJson(json);

  @override
  @JsonKey(name: MessageModel.idKey)
  final MessageId id;
  @override
  @JsonKey(name: MessageModel.senderIdKey)
  final ProfileId senderId;
  @override
  @JsonKey(name: MessageModel.recipientIdKey)
  final ProfileId recipientId;
  @override
  @JsonKey(name: MessageModel.contentKey)
  final String content;
  @override
  @JsonKey(name: MessageModel.readKey)
  final bool read;
  @override
  @JsonKey(name: MessageModel.tradeRequestIdKey)
  final int? tradeRequestId;
  @override
  @JsonKey(name: MessageModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
  @JsonKey(name: MessageModel.senderKey)
  final ProfileLiteModel sender;
  @override
  @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
  @JsonKey(name: MessageModel.recipientKey)
  final ProfileLiteModel recipient;

  @override
  String toString() {
    return 'MessageModel(id: $id, senderId: $senderId, recipientId: $recipientId, content: $content, read: $read, tradeRequestId: $tradeRequestId, createdAt: $createdAt, sender: $sender, recipient: $recipient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.tradeRequestId, tradeRequestId) ||
                other.tradeRequestId == tradeRequestId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderId, recipientId,
      content, read, tradeRequestId, createdAt, sender, recipient);

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      __$$MessageModelImplCopyWithImpl<_$MessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelImplToJson(
      this,
    );
  }
}

abstract class _MessageModel extends MessageModel {
  const factory _MessageModel(
      {@JsonKey(name: MessageModel.idKey) required final MessageId id,
      @JsonKey(name: MessageModel.senderIdKey)
      required final ProfileId senderId,
      @JsonKey(name: MessageModel.recipientIdKey)
      required final ProfileId recipientId,
      @JsonKey(name: MessageModel.contentKey) required final String content,
      @JsonKey(name: MessageModel.readKey) required final bool read,
      @JsonKey(name: MessageModel.tradeRequestIdKey)
      required final int? tradeRequestId,
      @JsonKey(name: MessageModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
      @JsonKey(name: MessageModel.senderKey)
      required final ProfileLiteModel sender,
      @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
      @JsonKey(name: MessageModel.recipientKey)
      required final ProfileLiteModel recipient}) = _$MessageModelImpl;
  const _MessageModel._() : super._();

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$MessageModelImpl.fromJson;

  @override
  @JsonKey(name: MessageModel.idKey)
  MessageId get id;
  @override
  @JsonKey(name: MessageModel.senderIdKey)
  ProfileId get senderId;
  @override
  @JsonKey(name: MessageModel.recipientIdKey)
  ProfileId get recipientId;
  @override
  @JsonKey(name: MessageModel.contentKey)
  String get content;
  @override
  @JsonKey(name: MessageModel.readKey)
  bool get read;
  @override
  @JsonKey(name: MessageModel.tradeRequestIdKey)
  int? get tradeRequestId;
  @override
  @JsonKey(name: MessageModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
  @JsonKey(name: MessageModel.senderKey)
  ProfileLiteModel get sender;
  @override
  @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
  @JsonKey(name: MessageModel.recipientKey)
  ProfileLiteModel get recipient;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageLiteModel _$MessageLiteModelFromJson(Map<String, dynamic> json) {
  return _MessageLiteModel.fromJson(json);
}

/// @nodoc
mixin _$MessageLiteModel {
  @JsonKey(name: MessageLiteModel.idKey)
  MessageId get id => throw _privateConstructorUsedError;
  @JsonKey(name: MessageLiteModel.senderIdKey)
  ProfileId get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: MessageLiteModel.recipientIdKey)
  ProfileId get recipientId => throw _privateConstructorUsedError;
  @JsonKey(name: MessageLiteModel.contentKey)
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: MessageLiteModel.readKey)
  bool get read => throw _privateConstructorUsedError;
  @JsonKey(name: MessageLiteModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this MessageLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageLiteModelCopyWith<MessageLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageLiteModelCopyWith<$Res> {
  factory $MessageLiteModelCopyWith(
          MessageLiteModel value, $Res Function(MessageLiteModel) then) =
      _$MessageLiteModelCopyWithImpl<$Res, MessageLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: MessageLiteModel.idKey) MessageId id,
      @JsonKey(name: MessageLiteModel.senderIdKey) ProfileId senderId,
      @JsonKey(name: MessageLiteModel.recipientIdKey) ProfileId recipientId,
      @JsonKey(name: MessageLiteModel.contentKey) String content,
      @JsonKey(name: MessageLiteModel.readKey) bool read,
      @JsonKey(name: MessageLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class _$MessageLiteModelCopyWithImpl<$Res, $Val extends MessageLiteModel>
    implements $MessageLiteModelCopyWith<$Res> {
  _$MessageLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
    Object? read = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageId,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageLiteModelImplCopyWith<$Res>
    implements $MessageLiteModelCopyWith<$Res> {
  factory _$$MessageLiteModelImplCopyWith(_$MessageLiteModelImpl value,
          $Res Function(_$MessageLiteModelImpl) then) =
      __$$MessageLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: MessageLiteModel.idKey) MessageId id,
      @JsonKey(name: MessageLiteModel.senderIdKey) ProfileId senderId,
      @JsonKey(name: MessageLiteModel.recipientIdKey) ProfileId recipientId,
      @JsonKey(name: MessageLiteModel.contentKey) String content,
      @JsonKey(name: MessageLiteModel.readKey) bool read,
      @JsonKey(name: MessageLiteModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class __$$MessageLiteModelImplCopyWithImpl<$Res>
    extends _$MessageLiteModelCopyWithImpl<$Res, _$MessageLiteModelImpl>
    implements _$$MessageLiteModelImplCopyWith<$Res> {
  __$$MessageLiteModelImplCopyWithImpl(_$MessageLiteModelImpl _value,
      $Res Function(_$MessageLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
    Object? read = null,
    Object? createdAt = null,
  }) {
    return _then(_$MessageLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageId,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(MessageLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$MessageLiteModelImpl extends _MessageLiteModel {
  const _$MessageLiteModelImpl(
      {@JsonKey(name: MessageLiteModel.idKey) required this.id,
      @JsonKey(name: MessageLiteModel.senderIdKey) required this.senderId,
      @JsonKey(name: MessageLiteModel.recipientIdKey) required this.recipientId,
      @JsonKey(name: MessageLiteModel.contentKey) required this.content,
      @JsonKey(name: MessageLiteModel.readKey) required this.read,
      @JsonKey(name: MessageLiteModel.createdAtKey) required this.createdAt})
      : super._();

  factory _$MessageLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageLiteModelImplFromJson(json);

  @override
  @JsonKey(name: MessageLiteModel.idKey)
  final MessageId id;
  @override
  @JsonKey(name: MessageLiteModel.senderIdKey)
  final ProfileId senderId;
  @override
  @JsonKey(name: MessageLiteModel.recipientIdKey)
  final ProfileId recipientId;
  @override
  @JsonKey(name: MessageLiteModel.contentKey)
  final String content;
  @override
  @JsonKey(name: MessageLiteModel.readKey)
  final bool read;
  @override
  @JsonKey(name: MessageLiteModel.createdAtKey)
  final DateTime createdAt;

  @override
  String toString() {
    return 'MessageLiteModel(id: $id, senderId: $senderId, recipientId: $recipientId, content: $content, read: $read, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, senderId, recipientId, content, read, createdAt);

  /// Create a copy of MessageLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageLiteModelImplCopyWith<_$MessageLiteModelImpl> get copyWith =>
      __$$MessageLiteModelImplCopyWithImpl<_$MessageLiteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageLiteModelImplToJson(
      this,
    );
  }
}

abstract class _MessageLiteModel extends MessageLiteModel {
  const factory _MessageLiteModel(
      {@JsonKey(name: MessageLiteModel.idKey) required final MessageId id,
      @JsonKey(name: MessageLiteModel.senderIdKey)
      required final ProfileId senderId,
      @JsonKey(name: MessageLiteModel.recipientIdKey)
      required final ProfileId recipientId,
      @JsonKey(name: MessageLiteModel.contentKey) required final String content,
      @JsonKey(name: MessageLiteModel.readKey) required final bool read,
      @JsonKey(name: MessageLiteModel.createdAtKey)
      required final DateTime createdAt}) = _$MessageLiteModelImpl;
  const _MessageLiteModel._() : super._();

  factory _MessageLiteModel.fromJson(Map<String, dynamic> json) =
      _$MessageLiteModelImpl.fromJson;

  @override
  @JsonKey(name: MessageLiteModel.idKey)
  MessageId get id;
  @override
  @JsonKey(name: MessageLiteModel.senderIdKey)
  ProfileId get senderId;
  @override
  @JsonKey(name: MessageLiteModel.recipientIdKey)
  ProfileId get recipientId;
  @override
  @JsonKey(name: MessageLiteModel.contentKey)
  String get content;
  @override
  @JsonKey(name: MessageLiteModel.readKey)
  bool get read;
  @override
  @JsonKey(name: MessageLiteModel.createdAtKey)
  DateTime get createdAt;

  /// Create a copy of MessageLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageLiteModelImplCopyWith<_$MessageLiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageDetailModel _$MessageDetailModelFromJson(Map<String, dynamic> json) {
  return _MessageDetailModel.fromJson(json);
}

/// @nodoc
mixin _$MessageDetailModel {
  @JsonKey(name: MessageDetailModel.idKey)
  MessageId get id => throw _privateConstructorUsedError;
  @JsonKey(name: MessageDetailModel.senderIdKey)
  ProfileId get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: MessageDetailModel.recipientIdKey)
  ProfileId get recipientId => throw _privateConstructorUsedError;
  @JsonKey(name: MessageDetailModel.contentKey)
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: MessageDetailModel.readKey)
  bool get read => throw _privateConstructorUsedError;
  @JsonKey(name: MessageDetailModel.tradeRequestIdKey)
  int? get tradeRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: MessageDetailModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
  @JsonKey(name: MessageDetailModel.senderKey)
  ProfileLiteModel get sender => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
  @JsonKey(name: MessageDetailModel.recipientKey)
  ProfileLiteModel get recipient => throw _privateConstructorUsedError;

  /// Serializes this MessageDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageDetailModelCopyWith<MessageDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDetailModelCopyWith<$Res> {
  factory $MessageDetailModelCopyWith(
          MessageDetailModel value, $Res Function(MessageDetailModel) then) =
      _$MessageDetailModelCopyWithImpl<$Res, MessageDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: MessageDetailModel.idKey) MessageId id,
      @JsonKey(name: MessageDetailModel.senderIdKey) ProfileId senderId,
      @JsonKey(name: MessageDetailModel.recipientIdKey) ProfileId recipientId,
      @JsonKey(name: MessageDetailModel.contentKey) String content,
      @JsonKey(name: MessageDetailModel.readKey) bool read,
      @JsonKey(name: MessageDetailModel.tradeRequestIdKey) int? tradeRequestId,
      @JsonKey(name: MessageDetailModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
      @JsonKey(name: MessageDetailModel.senderKey)
      ProfileLiteModel sender,
      @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
      @JsonKey(name: MessageDetailModel.recipientKey)
      ProfileLiteModel recipient});

  $ProfileLiteModelCopyWith<$Res> get sender;
  $ProfileLiteModelCopyWith<$Res> get recipient;
}

/// @nodoc
class _$MessageDetailModelCopyWithImpl<$Res, $Val extends MessageDetailModel>
    implements $MessageDetailModelCopyWith<$Res> {
  _$MessageDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
    Object? read = null,
    Object? tradeRequestId = freezed,
    Object? createdAt = null,
    Object? sender = null,
    Object? recipient = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageId,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ) as $Val);
  }

  /// Create a copy of MessageDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get sender {
    return $ProfileLiteModelCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }

  /// Create a copy of MessageDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLiteModelCopyWith<$Res> get recipient {
    return $ProfileLiteModelCopyWith<$Res>(_value.recipient, (value) {
      return _then(_value.copyWith(recipient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageDetailModelImplCopyWith<$Res>
    implements $MessageDetailModelCopyWith<$Res> {
  factory _$$MessageDetailModelImplCopyWith(_$MessageDetailModelImpl value,
          $Res Function(_$MessageDetailModelImpl) then) =
      __$$MessageDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: MessageDetailModel.idKey) MessageId id,
      @JsonKey(name: MessageDetailModel.senderIdKey) ProfileId senderId,
      @JsonKey(name: MessageDetailModel.recipientIdKey) ProfileId recipientId,
      @JsonKey(name: MessageDetailModel.contentKey) String content,
      @JsonKey(name: MessageDetailModel.readKey) bool read,
      @JsonKey(name: MessageDetailModel.tradeRequestIdKey) int? tradeRequestId,
      @JsonKey(name: MessageDetailModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
      @JsonKey(name: MessageDetailModel.senderKey)
      ProfileLiteModel sender,
      @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
      @JsonKey(name: MessageDetailModel.recipientKey)
      ProfileLiteModel recipient});

  @override
  $ProfileLiteModelCopyWith<$Res> get sender;
  @override
  $ProfileLiteModelCopyWith<$Res> get recipient;
}

/// @nodoc
class __$$MessageDetailModelImplCopyWithImpl<$Res>
    extends _$MessageDetailModelCopyWithImpl<$Res, _$MessageDetailModelImpl>
    implements _$$MessageDetailModelImplCopyWith<$Res> {
  __$$MessageDetailModelImplCopyWithImpl(_$MessageDetailModelImpl _value,
      $Res Function(_$MessageDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
    Object? read = null,
    Object? tradeRequestId = freezed,
    Object? createdAt = null,
    Object? sender = null,
    Object? recipient = null,
  }) {
    return _then(_$MessageDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageId,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as ProfileLiteModel,
    ));
  }
}

/// @nodoc

@TableModel(MessageDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$MessageDetailModelImpl extends _MessageDetailModel {
  const _$MessageDetailModelImpl(
      {@JsonKey(name: MessageDetailModel.idKey) required this.id,
      @JsonKey(name: MessageDetailModel.senderIdKey) required this.senderId,
      @JsonKey(name: MessageDetailModel.recipientIdKey)
      required this.recipientId,
      @JsonKey(name: MessageDetailModel.contentKey) required this.content,
      @JsonKey(name: MessageDetailModel.readKey) required this.read,
      @JsonKey(name: MessageDetailModel.tradeRequestIdKey)
      required this.tradeRequestId,
      @JsonKey(name: MessageDetailModel.createdAtKey) required this.createdAt,
      @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
      @JsonKey(name: MessageDetailModel.senderKey)
      required this.sender,
      @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
      @JsonKey(name: MessageDetailModel.recipientKey)
      required this.recipient})
      : super._();

  factory _$MessageDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDetailModelImplFromJson(json);

  @override
  @JsonKey(name: MessageDetailModel.idKey)
  final MessageId id;
  @override
  @JsonKey(name: MessageDetailModel.senderIdKey)
  final ProfileId senderId;
  @override
  @JsonKey(name: MessageDetailModel.recipientIdKey)
  final ProfileId recipientId;
  @override
  @JsonKey(name: MessageDetailModel.contentKey)
  final String content;
  @override
  @JsonKey(name: MessageDetailModel.readKey)
  final bool read;
  @override
  @JsonKey(name: MessageDetailModel.tradeRequestIdKey)
  final int? tradeRequestId;
  @override
  @JsonKey(name: MessageDetailModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
  @JsonKey(name: MessageDetailModel.senderKey)
  final ProfileLiteModel sender;
  @override
  @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
  @JsonKey(name: MessageDetailModel.recipientKey)
  final ProfileLiteModel recipient;

  @override
  String toString() {
    return 'MessageDetailModel(id: $id, senderId: $senderId, recipientId: $recipientId, content: $content, read: $read, tradeRequestId: $tradeRequestId, createdAt: $createdAt, sender: $sender, recipient: $recipient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.tradeRequestId, tradeRequestId) ||
                other.tradeRequestId == tradeRequestId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderId, recipientId,
      content, read, tradeRequestId, createdAt, sender, recipient);

  /// Create a copy of MessageDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDetailModelImplCopyWith<_$MessageDetailModelImpl> get copyWith =>
      __$$MessageDetailModelImplCopyWithImpl<_$MessageDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDetailModelImplToJson(
      this,
    );
  }
}

abstract class _MessageDetailModel extends MessageDetailModel {
  const factory _MessageDetailModel(
      {@JsonKey(name: MessageDetailModel.idKey) required final MessageId id,
      @JsonKey(name: MessageDetailModel.senderIdKey)
      required final ProfileId senderId,
      @JsonKey(name: MessageDetailModel.recipientIdKey)
      required final ProfileId recipientId,
      @JsonKey(name: MessageDetailModel.contentKey)
      required final String content,
      @JsonKey(name: MessageDetailModel.readKey) required final bool read,
      @JsonKey(name: MessageDetailModel.tradeRequestIdKey)
      required final int? tradeRequestId,
      @JsonKey(name: MessageDetailModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
      @JsonKey(name: MessageDetailModel.senderKey)
      required final ProfileLiteModel sender,
      @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
      @JsonKey(name: MessageDetailModel.recipientKey)
      required final ProfileLiteModel recipient}) = _$MessageDetailModelImpl;
  const _MessageDetailModel._() : super._();

  factory _MessageDetailModel.fromJson(Map<String, dynamic> json) =
      _$MessageDetailModelImpl.fromJson;

  @override
  @JsonKey(name: MessageDetailModel.idKey)
  MessageId get id;
  @override
  @JsonKey(name: MessageDetailModel.senderIdKey)
  ProfileId get senderId;
  @override
  @JsonKey(name: MessageDetailModel.recipientIdKey)
  ProfileId get recipientId;
  @override
  @JsonKey(name: MessageDetailModel.contentKey)
  String get content;
  @override
  @JsonKey(name: MessageDetailModel.readKey)
  bool get read;
  @override
  @JsonKey(name: MessageDetailModel.tradeRequestIdKey)
  int? get tradeRequestId;
  @override
  @JsonKey(name: MessageDetailModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "sender_id", candidateKey: "id")
  @JsonKey(name: MessageDetailModel.senderKey)
  ProfileLiteModel get sender;
  @override
  @JoinedColumn(foreignKey: "recipient_id", candidateKey: "id")
  @JsonKey(name: MessageDetailModel.recipientKey)
  ProfileLiteModel get recipient;

  /// Create a copy of MessageDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageDetailModelImplCopyWith<_$MessageDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageCreateParam _$MessageCreateParamFromJson(Map<String, dynamic> json) {
  return _MessageCreateParam.fromJson(json);
}

/// @nodoc
mixin _$MessageCreateParam {
  @JsonKey(name: MessageCreateParam.senderIdKey)
  ProfileId get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: MessageCreateParam.recipientIdKey)
  ProfileId get recipientId => throw _privateConstructorUsedError;
  @JsonKey(name: MessageCreateParam.contentKey)
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: MessageCreateParam.tradeRequestIdKey)
  int? get tradeRequestId => throw _privateConstructorUsedError;

  /// Serializes this MessageCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCreateParamCopyWith<MessageCreateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCreateParamCopyWith<$Res> {
  factory $MessageCreateParamCopyWith(
          MessageCreateParam value, $Res Function(MessageCreateParam) then) =
      _$MessageCreateParamCopyWithImpl<$Res, MessageCreateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: MessageCreateParam.senderIdKey) ProfileId senderId,
      @JsonKey(name: MessageCreateParam.recipientIdKey) ProfileId recipientId,
      @JsonKey(name: MessageCreateParam.contentKey) String content,
      @JsonKey(name: MessageCreateParam.tradeRequestIdKey)
      int? tradeRequestId});
}

/// @nodoc
class _$MessageCreateParamCopyWithImpl<$Res, $Val extends MessageCreateParam>
    implements $MessageCreateParamCopyWith<$Res> {
  _$MessageCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
    Object? tradeRequestId = freezed,
  }) {
    return _then(_value.copyWith(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageCreateParamImplCopyWith<$Res>
    implements $MessageCreateParamCopyWith<$Res> {
  factory _$$MessageCreateParamImplCopyWith(_$MessageCreateParamImpl value,
          $Res Function(_$MessageCreateParamImpl) then) =
      __$$MessageCreateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: MessageCreateParam.senderIdKey) ProfileId senderId,
      @JsonKey(name: MessageCreateParam.recipientIdKey) ProfileId recipientId,
      @JsonKey(name: MessageCreateParam.contentKey) String content,
      @JsonKey(name: MessageCreateParam.tradeRequestIdKey)
      int? tradeRequestId});
}

/// @nodoc
class __$$MessageCreateParamImplCopyWithImpl<$Res>
    extends _$MessageCreateParamCopyWithImpl<$Res, _$MessageCreateParamImpl>
    implements _$$MessageCreateParamImplCopyWith<$Res> {
  __$$MessageCreateParamImplCopyWithImpl(_$MessageCreateParamImpl _value,
      $Res Function(_$MessageCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
    Object? tradeRequestId = freezed,
  }) {
    return _then(_$MessageCreateParamImpl(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      tradeRequestId: freezed == tradeRequestId
          ? _value.tradeRequestId
          : tradeRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MessageCreateParamImpl extends _MessageCreateParam {
  const _$MessageCreateParamImpl(
      {@JsonKey(name: MessageCreateParam.senderIdKey) required this.senderId,
      @JsonKey(name: MessageCreateParam.recipientIdKey)
      required this.recipientId,
      @JsonKey(name: MessageCreateParam.contentKey) required this.content,
      @JsonKey(name: MessageCreateParam.tradeRequestIdKey)
      required this.tradeRequestId})
      : super._();

  factory _$MessageCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageCreateParamImplFromJson(json);

  @override
  @JsonKey(name: MessageCreateParam.senderIdKey)
  final ProfileId senderId;
  @override
  @JsonKey(name: MessageCreateParam.recipientIdKey)
  final ProfileId recipientId;
  @override
  @JsonKey(name: MessageCreateParam.contentKey)
  final String content;
  @override
  @JsonKey(name: MessageCreateParam.tradeRequestIdKey)
  final int? tradeRequestId;

  @override
  String toString() {
    return 'MessageCreateParam(senderId: $senderId, recipientId: $recipientId, content: $content, tradeRequestId: $tradeRequestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageCreateParamImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.tradeRequestId, tradeRequestId) ||
                other.tradeRequestId == tradeRequestId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, senderId, recipientId, content, tradeRequestId);

  /// Create a copy of MessageCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageCreateParamImplCopyWith<_$MessageCreateParamImpl> get copyWith =>
      __$$MessageCreateParamImplCopyWithImpl<_$MessageCreateParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageCreateParamImplToJson(
      this,
    );
  }
}

abstract class _MessageCreateParam extends MessageCreateParam {
  const factory _MessageCreateParam(
      {@JsonKey(name: MessageCreateParam.senderIdKey)
      required final ProfileId senderId,
      @JsonKey(name: MessageCreateParam.recipientIdKey)
      required final ProfileId recipientId,
      @JsonKey(name: MessageCreateParam.contentKey)
      required final String content,
      @JsonKey(name: MessageCreateParam.tradeRequestIdKey)
      required final int? tradeRequestId}) = _$MessageCreateParamImpl;
  const _MessageCreateParam._() : super._();

  factory _MessageCreateParam.fromJson(Map<String, dynamic> json) =
      _$MessageCreateParamImpl.fromJson;

  @override
  @JsonKey(name: MessageCreateParam.senderIdKey)
  ProfileId get senderId;
  @override
  @JsonKey(name: MessageCreateParam.recipientIdKey)
  ProfileId get recipientId;
  @override
  @JsonKey(name: MessageCreateParam.contentKey)
  String get content;
  @override
  @JsonKey(name: MessageCreateParam.tradeRequestIdKey)
  int? get tradeRequestId;

  /// Create a copy of MessageCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageCreateParamImplCopyWith<_$MessageCreateParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageUpdateParam _$MessageUpdateParamFromJson(Map<String, dynamic> json) {
  return _MessageUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$MessageUpdateParam {
  @JsonKey(name: MessageUpdateParam.readKey)
  bool? get read => throw _privateConstructorUsedError;

  /// Serializes this MessageUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageUpdateParamCopyWith<MessageUpdateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageUpdateParamCopyWith<$Res> {
  factory $MessageUpdateParamCopyWith(
          MessageUpdateParam value, $Res Function(MessageUpdateParam) then) =
      _$MessageUpdateParamCopyWithImpl<$Res, MessageUpdateParam>;
  @useResult
  $Res call({@JsonKey(name: MessageUpdateParam.readKey) bool? read});
}

/// @nodoc
class _$MessageUpdateParamCopyWithImpl<$Res, $Val extends MessageUpdateParam>
    implements $MessageUpdateParamCopyWith<$Res> {
  _$MessageUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageUpdateParam
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
abstract class _$$MessageUpdateParamImplCopyWith<$Res>
    implements $MessageUpdateParamCopyWith<$Res> {
  factory _$$MessageUpdateParamImplCopyWith(_$MessageUpdateParamImpl value,
          $Res Function(_$MessageUpdateParamImpl) then) =
      __$$MessageUpdateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: MessageUpdateParam.readKey) bool? read});
}

/// @nodoc
class __$$MessageUpdateParamImplCopyWithImpl<$Res>
    extends _$MessageUpdateParamCopyWithImpl<$Res, _$MessageUpdateParamImpl>
    implements _$$MessageUpdateParamImplCopyWith<$Res> {
  __$$MessageUpdateParamImplCopyWithImpl(_$MessageUpdateParamImpl _value,
      $Res Function(_$MessageUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? read = freezed,
  }) {
    return _then(_$MessageUpdateParamImpl(
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MessageUpdateParamImpl extends _MessageUpdateParam {
  const _$MessageUpdateParamImpl(
      {@JsonKey(name: MessageUpdateParam.readKey) required this.read})
      : super._();

  factory _$MessageUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageUpdateParamImplFromJson(json);

  @override
  @JsonKey(name: MessageUpdateParam.readKey)
  final bool? read;

  @override
  String toString() {
    return 'MessageUpdateParam(read: $read)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageUpdateParamImpl &&
            (identical(other.read, read) || other.read == read));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, read);

  /// Create a copy of MessageUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageUpdateParamImplCopyWith<_$MessageUpdateParamImpl> get copyWith =>
      __$$MessageUpdateParamImplCopyWithImpl<_$MessageUpdateParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _MessageUpdateParam extends MessageUpdateParam {
  const factory _MessageUpdateParam(
      {@JsonKey(name: MessageUpdateParam.readKey)
      required final bool? read}) = _$MessageUpdateParamImpl;
  const _MessageUpdateParam._() : super._();

  factory _MessageUpdateParam.fromJson(Map<String, dynamic> json) =
      _$MessageUpdateParamImpl.fromJson;

  @override
  @JsonKey(name: MessageUpdateParam.readKey)
  bool? get read;

  /// Create a copy of MessageUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageUpdateParamImplCopyWith<_$MessageUpdateParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
