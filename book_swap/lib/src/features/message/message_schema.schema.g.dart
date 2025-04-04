// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'message_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: MessageId.fromJson(json['id']),
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      senderId: ProfileId.fromJson(json['sender_id']),
      recipientId: ProfileId.fromJson(json['recipient_id']),
      content: json['content'] as String,
      read: json['read'] as bool,
      tradeRequestId: (json['trade_request_id'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      unsent: json['unsent'] as bool,
      hiddenFrom: IList<ProfileId>.fromJson(
          json['hidden_from'], (value) => ProfileId.fromJson(value)),
      recipient:
          ProfileLiteModel.fromJson(json['recipient'] as Map<String, dynamic>),
      tradeRequest: json['tradeRequest'] == null
          ? null
          : TradeRequestLiteModel.fromJson(
              json['tradeRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'type': _$MessageTypeEnumMap[instance.type]!,
      'sender_id': instance.senderId.toJson(),
      'recipient_id': instance.recipientId.toJson(),
      'content': instance.content,
      'read': instance.read,
      'trade_request_id': instance.tradeRequestId,
      'created_at': instance.createdAt.toIso8601String(),
      'unsent': instance.unsent,
      'hidden_from': instance.hiddenFrom.toJson(
        (value) => value.toJson(),
      ),
      'recipient': instance.recipient.toJson(),
      'tradeRequest': instance.tradeRequest?.toJson(),
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.requestStarted: 'requestStarted',
  MessageType.offeredBook: 'offeredBook',
  MessageType.tradeConfirmed: 'tradeConfirmed',
};

_$MessageLiteModelImpl _$$MessageLiteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageLiteModelImpl(
      id: MessageId.fromJson(json['id']),
      senderId: ProfileId.fromJson(json['sender_id']),
      recipientId: ProfileId.fromJson(json['recipient_id']),
      content: json['content'] as String,
      read: json['read'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$MessageLiteModelImplToJson(
        _$MessageLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'sender_id': instance.senderId.toJson(),
      'recipient_id': instance.recipientId.toJson(),
      'content': instance.content,
      'read': instance.read,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$MessageCreateParamImpl _$$MessageCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageCreateParamImpl(
      senderId: ProfileId.fromJson(json['sender_id']),
      recipientId: ProfileId.fromJson(json['recipient_id']),
      content: json['content'] as String,
      tradeRequestId: (json['trade_request_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MessageCreateParamImplToJson(
        _$MessageCreateParamImpl instance) =>
    <String, dynamic>{
      'sender_id': instance.senderId.toJson(),
      'recipient_id': instance.recipientId.toJson(),
      'content': instance.content,
      'trade_request_id': instance.tradeRequestId,
    };

_$MessageUpdateParamImpl _$$MessageUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageUpdateParamImpl(
      read: json['read'] as bool?,
    );

Map<String, dynamic> _$$MessageUpdateParamImplToJson(
        _$MessageUpdateParamImpl instance) =>
    <String, dynamic>{
      'read': instance.read,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableMessageModel = TableBuilder(
  tableName: "messages",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('type'),
    ColumnBuilder('sender_id'),
    ColumnBuilder('recipient_id'),
    ColumnBuilder('content'),
    ColumnBuilder('read'),
    ColumnBuilder('trade_request_id'),
    ColumnBuilder('created_at'),
    ColumnBuilder('unsent'),
    ColumnBuilder('hidden_from'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "recipient", candidateKey: null, foreignKey: 'recipient_id'),
    ColumnBuilder.join(TradeRequestLiteModel.table,
        key: "tradeRequest",
        candidateKey: null,
        foreignKey: 'trade_request_id'),
  ],
);

const _tableMessageLiteModel = TableBuilder(
  tableName: "messages",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('sender_id'),
    ColumnBuilder('recipient_id'),
    ColumnBuilder('content'),
    ColumnBuilder('read'),
    ColumnBuilder('created_at'),
  ],
);
