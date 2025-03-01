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
      notificationType: json['notification_type'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      user: ProfileLiteModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'user_id': instance.userId.toJson(),
      'content': instance.content,
      'read': instance.read,
      'related_trade_id': instance.relatedTradeId,
      'notification_type': instance.notificationType,
      'created_at': instance.createdAt.toIso8601String(),
      'user': instance.user.toJson(),
    };

_$NotificationLiteModelImpl _$$NotificationLiteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationLiteModelImpl(
      id: NotificationId.fromJson(json['id']),
      userId: ProfileId.fromJson(json['user_id']),
      content: json['content'] as String,
      read: json['read'] as bool,
      notificationType: json['notification_type'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$NotificationLiteModelImplToJson(
        _$NotificationLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'user_id': instance.userId.toJson(),
      'content': instance.content,
      'read': instance.read,
      'notification_type': instance.notificationType,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$NotificationDetailModelImpl _$$NotificationDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDetailModelImpl(
      id: NotificationId.fromJson(json['id']),
      userId: ProfileId.fromJson(json['user_id']),
      content: json['content'] as String,
      read: json['read'] as bool,
      relatedTradeId: (json['related_trade_id'] as num?)?.toInt(),
      notificationType: json['notification_type'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      user: ProfileLiteModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationDetailModelImplToJson(
        _$NotificationDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'user_id': instance.userId.toJson(),
      'content': instance.content,
      'read': instance.read,
      'related_trade_id': instance.relatedTradeId,
      'notification_type': instance.notificationType,
      'created_at': instance.createdAt.toIso8601String(),
      'user': instance.user.toJson(),
    };

_$NotificationCreateParamImpl _$$NotificationCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationCreateParamImpl(
      userId: ProfileId.fromJson(json['user_id']),
      content: json['content'] as String,
      relatedTradeId: (json['related_trade_id'] as num?)?.toInt(),
      notificationType: json['notification_type'] as String,
    );

Map<String, dynamic> _$$NotificationCreateParamImplToJson(
        _$NotificationCreateParamImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId.toJson(),
      'content': instance.content,
      'related_trade_id': instance.relatedTradeId,
      'notification_type': instance.notificationType,
    };

_$NotificationUpdateParamImpl _$$NotificationUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationUpdateParamImpl(
      read: json['read'] as bool?,
    );

Map<String, dynamic> _$$NotificationUpdateParamImplToJson(
        _$NotificationUpdateParamImpl instance) =>
    <String, dynamic>{
      'read': instance.read,
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
    ColumnBuilder('created_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "user", candidateKey: 'id', foreignKey: 'user_id'),
  ],
);

const _tableNotificationLiteModel = TableBuilder(
  tableName: "notifications",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('content'),
    ColumnBuilder('read'),
    ColumnBuilder('notification_type'),
    ColumnBuilder('created_at'),
  ],
);

const _tableNotificationDetailModel = TableBuilder(
  tableName: "notifications",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('content'),
    ColumnBuilder('read'),
    ColumnBuilder('related_trade_id'),
    ColumnBuilder('notification_type'),
    ColumnBuilder('created_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "user", candidateKey: 'id', foreignKey: 'user_id'),
  ],
);
