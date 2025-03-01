import 'package:kimapp/kimapp.dart';

import '../profile/profile_schema.schema.dart';

@Schema(
  tableName: 'notifications',
  className: 'Notification',
  baseModelName: 'NotificationModel',
)
class NotificationSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('NotificationId');
  final userId = Field<ProfileId>('user_id');
  final content = Field<String>('content');
  final read = Field<bool>('read');
  final relatedTradeId = Field<int?>('related_trade_id');
  final notificationType = Field<String>('notification_type');
  final createdAt = Field<DateTime>('created_at');

  // Join fields
  final user = Field.join<ProfileLiteModel>().withForeignKey('user_id').withCandidateKey('id');

  @override
  List<Model> get models => [
        Model('NotificationLiteModel')
          ..table()
          ..addFields({
            'id': id,
            'userId': userId,
            'content': content,
            'read': read,
            'notificationType': notificationType,
            'createdAt': createdAt,
          }),
        Model('NotificationDetailModel')
          ..table()
          ..inheritAllFromBase()
          ..addFields({
            'user': user,
          }),
        Model('NotificationCreateParam')
          ..addFields({
            'userId': userId,
            'content': content,
            'relatedTradeId': relatedTradeId,
            'notificationType': notificationType,
          }),
        Model('NotificationUpdateParam')
          ..addFields({
            'read': Field<bool?>('read'),
          }),
      ];
}
