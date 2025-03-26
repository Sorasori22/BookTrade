// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  @JsonKey(name: ChatModel.messageIdKey)
  MessageId get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: ChatModel.recipientIdKey)
  ProfileId get recipientId => throw _privateConstructorUsedError;
  @JsonKey(name: ChatModel.recipientNameKey)
  String get recipientName => throw _privateConstructorUsedError;
  @JsonKey(name: ChatModel.recipientAvatarPathKey)
  ImageObject? get recipientAvatarPath => throw _privateConstructorUsedError;
  @JsonKey(name: ChatModel.lastMessageKey)
  String get lastMessage => throw _privateConstructorUsedError;
  @JsonKey(name: ChatModel.lastMessageTimeKey)
  DateTime get lastMessageTime => throw _privateConstructorUsedError;
  @JsonKey(name: ChatModel.unreadCountKey)
  int get unreadCount => throw _privateConstructorUsedError;
  @JsonKey(name: ChatModel.isSenderKey)
  bool get isSender => throw _privateConstructorUsedError;

  /// Serializes this ChatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {@JsonKey(name: ChatModel.messageIdKey) MessageId messageId,
      @JsonKey(name: ChatModel.recipientIdKey) ProfileId recipientId,
      @JsonKey(name: ChatModel.recipientNameKey) String recipientName,
      @JsonKey(name: ChatModel.recipientAvatarPathKey)
      ImageObject? recipientAvatarPath,
      @JsonKey(name: ChatModel.lastMessageKey) String lastMessage,
      @JsonKey(name: ChatModel.lastMessageTimeKey) DateTime lastMessageTime,
      @JsonKey(name: ChatModel.unreadCountKey) int unreadCount,
      @JsonKey(name: ChatModel.isSenderKey) bool isSender});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? recipientId = null,
    Object? recipientName = null,
    Object? recipientAvatarPath = freezed,
    Object? lastMessage = null,
    Object? lastMessageTime = null,
    Object? unreadCount = null,
    Object? isSender = null,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as MessageId,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      recipientName: null == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String,
      recipientAvatarPath: freezed == recipientAvatarPath
          ? _value.recipientAvatarPath
          : recipientAvatarPath // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageTime: null == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
          _$ChatModelImpl value, $Res Function(_$ChatModelImpl) then) =
      __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ChatModel.messageIdKey) MessageId messageId,
      @JsonKey(name: ChatModel.recipientIdKey) ProfileId recipientId,
      @JsonKey(name: ChatModel.recipientNameKey) String recipientName,
      @JsonKey(name: ChatModel.recipientAvatarPathKey)
      ImageObject? recipientAvatarPath,
      @JsonKey(name: ChatModel.lastMessageKey) String lastMessage,
      @JsonKey(name: ChatModel.lastMessageTimeKey) DateTime lastMessageTime,
      @JsonKey(name: ChatModel.unreadCountKey) int unreadCount,
      @JsonKey(name: ChatModel.isSenderKey) bool isSender});
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
      _$ChatModelImpl _value, $Res Function(_$ChatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? recipientId = null,
    Object? recipientName = null,
    Object? recipientAvatarPath = freezed,
    Object? lastMessage = null,
    Object? lastMessageTime = null,
    Object? unreadCount = null,
    Object? isSender = null,
  }) {
    return _then(_$ChatModelImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as MessageId,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      recipientName: null == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String,
      recipientAvatarPath: freezed == recipientAvatarPath
          ? _value.recipientAvatarPath
          : recipientAvatarPath // ignore: cast_nullable_to_non_nullable
              as ImageObject?,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageTime: null == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@TableModel(ChatModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$ChatModelImpl extends _ChatModel {
  const _$ChatModelImpl(
      {@JsonKey(name: ChatModel.messageIdKey) required this.messageId,
      @JsonKey(name: ChatModel.recipientIdKey) required this.recipientId,
      @JsonKey(name: ChatModel.recipientNameKey) required this.recipientName,
      @JsonKey(name: ChatModel.recipientAvatarPathKey)
      required this.recipientAvatarPath,
      @JsonKey(name: ChatModel.lastMessageKey) required this.lastMessage,
      @JsonKey(name: ChatModel.lastMessageTimeKey)
      required this.lastMessageTime,
      @JsonKey(name: ChatModel.unreadCountKey) required this.unreadCount,
      @JsonKey(name: ChatModel.isSenderKey) required this.isSender})
      : super._();

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  @JsonKey(name: ChatModel.messageIdKey)
  final MessageId messageId;
  @override
  @JsonKey(name: ChatModel.recipientIdKey)
  final ProfileId recipientId;
  @override
  @JsonKey(name: ChatModel.recipientNameKey)
  final String recipientName;
  @override
  @JsonKey(name: ChatModel.recipientAvatarPathKey)
  final ImageObject? recipientAvatarPath;
  @override
  @JsonKey(name: ChatModel.lastMessageKey)
  final String lastMessage;
  @override
  @JsonKey(name: ChatModel.lastMessageTimeKey)
  final DateTime lastMessageTime;
  @override
  @JsonKey(name: ChatModel.unreadCountKey)
  final int unreadCount;
  @override
  @JsonKey(name: ChatModel.isSenderKey)
  final bool isSender;

  @override
  String toString() {
    return 'ChatModel(messageId: $messageId, recipientId: $recipientId, recipientName: $recipientName, recipientAvatarPath: $recipientAvatarPath, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, unreadCount: $unreadCount, isSender: $isSender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.recipientName, recipientName) ||
                other.recipientName == recipientName) &&
            (identical(other.recipientAvatarPath, recipientAvatarPath) ||
                other.recipientAvatarPath == recipientAvatarPath) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageTime, lastMessageTime) ||
                other.lastMessageTime == lastMessageTime) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.isSender, isSender) ||
                other.isSender == isSender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      messageId,
      recipientId,
      recipientName,
      recipientAvatarPath,
      lastMessage,
      lastMessageTime,
      unreadCount,
      isSender);

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(
      this,
    );
  }
}

abstract class _ChatModel extends ChatModel {
  const factory _ChatModel(
      {@JsonKey(name: ChatModel.messageIdKey)
      required final MessageId messageId,
      @JsonKey(name: ChatModel.recipientIdKey)
      required final ProfileId recipientId,
      @JsonKey(name: ChatModel.recipientNameKey)
      required final String recipientName,
      @JsonKey(name: ChatModel.recipientAvatarPathKey)
      required final ImageObject? recipientAvatarPath,
      @JsonKey(name: ChatModel.lastMessageKey)
      required final String lastMessage,
      @JsonKey(name: ChatModel.lastMessageTimeKey)
      required final DateTime lastMessageTime,
      @JsonKey(name: ChatModel.unreadCountKey) required final int unreadCount,
      @JsonKey(name: ChatModel.isSenderKey)
      required final bool isSender}) = _$ChatModelImpl;
  const _ChatModel._() : super._();

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  @JsonKey(name: ChatModel.messageIdKey)
  MessageId get messageId;
  @override
  @JsonKey(name: ChatModel.recipientIdKey)
  ProfileId get recipientId;
  @override
  @JsonKey(name: ChatModel.recipientNameKey)
  String get recipientName;
  @override
  @JsonKey(name: ChatModel.recipientAvatarPathKey)
  ImageObject? get recipientAvatarPath;
  @override
  @JsonKey(name: ChatModel.lastMessageKey)
  String get lastMessage;
  @override
  @JsonKey(name: ChatModel.lastMessageTimeKey)
  DateTime get lastMessageTime;
  @override
  @JsonKey(name: ChatModel.unreadCountKey)
  int get unreadCount;
  @override
  @JsonKey(name: ChatModel.isSenderKey)
  bool get isSender;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
