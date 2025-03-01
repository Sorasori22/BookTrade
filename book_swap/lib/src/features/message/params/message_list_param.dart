import 'package:freezed_annotation/freezed_annotation.dart';

import '../../profile/profile_schema.schema.dart';

part 'message_list_param.freezed.dart';

@freezed
class MessageListParam with _$MessageListParam {
  const factory MessageListParam({
    ProfileId? senderId,
    ProfileId? recipientId,
    int? tradeRequestId,
    bool? read,
  }) = _MessageListParam;
}
