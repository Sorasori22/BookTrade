// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'notification_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: NotificationId.fromJson(json['id']),
      userId: ProfileId.fromJson(json['user_id']),
      content: json['content'] as String,
      read: json['read'] as bool,
      relatedTradeId: (json['related_trade_id'] as num?)?.toInt(),
      rawType: json['notification_type'] as String,
      payload: json['payload'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['created_at'] as String),
      tradeRequest: json['tradeRequest'] == null
          ? null
          : TradeRequestLiteModel.fromJson(
              json['tradeRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'user_id': instance.userId.toJson(),
      'content': instance.content,
      'read': instance.read,
      'related_trade_id': instance.relatedTradeId,
      'notification_type': instance.rawType,
      'payload': instance.payload,
      'created_at': instance.createdAt.toIso8601String(),
      'tradeRequest': instance.tradeRequest?.toJson(),
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableNotificationModel = TableBuilder(
  tableName: "notifications",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('content'),
    ColumnBuilder('read'),
    ColumnBuilder('related_trade_id'),
    ColumnBuilder('notification_type'),
    ColumnBuilder('payload'),
    ColumnBuilder('created_at'),
    ColumnBuilder.join(TradeRequestLiteModel.table,
        key: "tradeRequest",
        candidateKey: null,
        foreignKey: 'related_trade_id'),
  ],
);
