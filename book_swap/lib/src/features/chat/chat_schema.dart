import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:book_swap/src/features/message/message_schema.dart';
import 'package:book_swap/src/features/message/message_schema.schema.dart';
import 'package:kimapp/kimapp.dart';

import '../profile/profile_schema.schema.dart';

@Schema(
  tableName: 'chats',
  className: 'Chat',
  baseModelName: 'ChatModel',
)
class ChatSchema extends KimappSchema {
  final messageId = Field<MessageId>('message_id');
  final recipientId = Field<ProfileId>('recipient_id');
  final recipientName = Field<String>('recipient_name');
  final recipientAvatarPath = Field<ImageObject?>('recipient_avatar_path');
  final lastMessage = Field<String>('last_message');
  final lastMessageTime = Field<DateTime>('last_message_time');
  final unreadCount = Field<int>('unread_count');
  final isSender = Field<bool>('is_sender');
  final messageType = Field<MessageType?>('message_type');
}
