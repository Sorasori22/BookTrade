import 'package:book_swap/src/features/notification/notification_schema.schema.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:kimapp/kimapp.dart';

import '../profile/profile_schema.schema.dart';

enum NotificationType {
  message,
  tradeRequest,
  tradeRequestAccepted,
  tradeRequestRejected,
  tradeRequestCompleted,
  tradeRequestConfirmed;

  static NotificationType fromString(String value) {
    switch (value) {
      case 'message':
        return NotificationType.message;
      case 'trade_request':
        return NotificationType.tradeRequest;
      case 'trade_request_accepted':
        return NotificationType.tradeRequestAccepted;
      case 'trade_request_rejected':
        return NotificationType.tradeRequestRejected;
      case 'trade_request_confirmed':
        return NotificationType.tradeRequestConfirmed;
      case 'trade_request_completed':
        return NotificationType.tradeRequestCompleted;
      default:
        throw Exception('Invalid notification type: $value');
    }
  }

  String displayText() {
    switch (this) {
      case NotificationType.message:
        return 'Message';
      case NotificationType.tradeRequest:
        return 'Trade Request';
      case NotificationType.tradeRequestAccepted:
        return 'Trade Request Accepted';
      case NotificationType.tradeRequestRejected:
        return 'Trade Request Rejected';
      case NotificationType.tradeRequestCompleted:
        return 'Trade Request Completed';
      case NotificationType.tradeRequestConfirmed:
        return 'Trade Request Confirmed';
    }
  }
}

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
  final rawType = Field<String>('notification_type');
  final payload = Field<Map<String, dynamic>>('payload');
  final createdAt = Field<DateTime>('created_at');

  // Join fields
  final tradeRequest = Field.join<TradeRequestLiteModel?>().withForeignKey('related_trade_id');
}

extension NotificationModelX on NotificationModel {
  NotificationType get type => NotificationType.fromString(rawType);
}
