import 'package:book_swap/src/features/notification/notification_schema.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../profile/profile_schema.schema.dart';

part 'notification_list_param.freezed.dart';

@freezed
class NotificationListParam with _$NotificationListParam {
  const factory NotificationListParam({
    required ProfileId userId,
    int? relatedTradeId,
    NotificationType? notificationType,
    bool? read,
  }) = _NotificationListParam;
}
