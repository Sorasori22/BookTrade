// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'chat_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      messageId: MessageId.fromJson(json['message_id']),
      recipientId: ProfileId.fromJson(json['recipient_id']),
      recipientName: json['recipient_name'] as String,
      recipientAvatarPath: json['recipient_avatar_path'] == null
          ? null
          : ImageObject.fromJson(json['recipient_avatar_path']),
      lastMessage: json['last_message'] as String,
      lastMessageTime: DateTime.parse(json['last_message_time'] as String),
      unreadCount: (json['unread_count'] as num).toInt(),
      isSender: json['is_sender'] as bool,
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'message_id': instance.messageId.toJson(),
      'recipient_id': instance.recipientId.toJson(),
      'recipient_name': instance.recipientName,
      'recipient_avatar_path': instance.recipientAvatarPath?.toJson(),
      'last_message': instance.lastMessage,
      'last_message_time': instance.lastMessageTime.toIso8601String(),
      'unread_count': instance.unreadCount,
      'is_sender': instance.isSender,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableChatModel = TableBuilder(
  tableName: "chats",
  columns: [
    ColumnBuilder('message_id'),
    ColumnBuilder('recipient_id'),
    ColumnBuilder('recipient_name'),
    ColumnBuilder('recipient_avatar_path'),
    ColumnBuilder('last_message'),
    ColumnBuilder('last_message_time'),
    ColumnBuilder('unread_count'),
    ColumnBuilder('is_sender'),
  ],
);
