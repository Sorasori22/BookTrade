import 'package:kimapp/kimapp.dart';

import '../profile/profile_schema.schema.dart';
import '../trade_request/trade_request_schema.schema.dart';

@Schema(
  tableName: 'messages',
  className: 'Message',
  baseModelName: 'MessageModel',
)
class MessageSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('MessageId');
  final senderId = Field<ProfileId>('sender_id');
  final recipientId = Field<ProfileId>('recipient_id');
  final content = Field<String>('content');
  final read = Field<bool>('read');
  final tradeRequestId = Field<int?>('trade_request_id');
  final createdAt = Field<DateTime>('created_at');

  final recipient = Field.join<ProfileLiteModel>().withForeignKey('recipient_id');
  final tradeRequest = Field.join<TradeRequestLiteModel?>().withForeignKey('trade_request_id');

  @override
  List<Model> get models => [
        Model('MessageLiteModel')
          ..table()
          ..addFields({
            'id': id,
            'senderId': senderId,
            'recipientId': recipientId,
            'content': content,
            'read': read,
            'createdAt': createdAt,
          }),
        Model('MessageDetailModel')
          ..table()
          ..inheritAllFromBase()
          ..addFields({
            'recipient': recipient,
          }),
        Model('MessageCreateParam')
          ..addFields({
            'senderId': senderId,
            'recipientId': recipientId,
            'content': content,
            'tradeRequestId': tradeRequestId,
          }),
        Model('MessageUpdateParam')
          ..addFields({
            'read': Field<bool?>('read'),
          }),
      ];
}
