import 'package:freezed_annotation/freezed_annotation.dart';

import '../../profile/profile_schema.schema.dart';

part 'notification_list_param.freezed.dart';

@freezed
class NotificationListParam with _$NotificationListParam {
  const factory NotificationListParam({
    ProfileId? userId,
    int? relatedTradeId,
    String? notificationType,
    bool? read,
  }) = _NotificationListParam;
}
