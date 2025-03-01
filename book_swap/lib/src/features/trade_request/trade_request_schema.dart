import 'package:kimapp/kimapp.dart';

import '../book/book_schema.schema.dart';
import '../profile/profile_schema.schema.dart';

@Schema(
  tableName: 'trade_requests',
  className: 'TradeRequest',
  baseModelName: 'TradeRequestModel',
)
class TradeRequestSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('TradeRequestId');
  final requesterId = Field<ProfileId>('requester_id');
  final ownerId = Field<ProfileId>('owner_id');
  final bookId = Field<BookId>('book_id');
  final offeredBookId = Field<BookId?>('offered_book_id');
  final status = Field<String>('status');
  final message = Field<String?>('message');
  final createdAt = Field<DateTime>('created_at');
  final updatedAt = Field<DateTime>('updated_at');

  // Join fields
  final requester =
      Field.join<ProfileLiteModel>().withForeignKey('requester_id').withCandidateKey('id');
  final owner = Field.join<ProfileLiteModel>().withForeignKey('owner_id').withCandidateKey('id');
  final book = Field.join<BookLiteModel>().withForeignKey('book_id').withCandidateKey('id');
  final offeredBook =
      Field.join<BookLiteModel?>().withForeignKey('offered_book_id').withCandidateKey('id');

  @override
  List<Model> get models => [
        Model('TradeRequestLiteModel')
          ..table()
          ..addFields({
            'id': id,
            'requesterId': requesterId,
            'ownerId': ownerId,
            'bookId': bookId,
            'offeredBookId': offeredBookId,
            'status': status,
            'createdAt': createdAt,
          }),
        Model('TradeRequestDetailModel')
          ..table()
          ..inheritAllFromBase()
          ..addFields({
            'requester': requester,
            'owner': owner,
            'book': book,
            'offeredBook': offeredBook,
          }),
        Model('TradeRequestCreateParam')
          ..addFields({
            'requesterId': requesterId,
            'ownerId': ownerId,
            'bookId': bookId,
            'offeredBookId': offeredBookId,
            'message': message,
          }),
        Model('TradeRequestUpdateParam')
          ..addFields({
            'status': Field<String?>('status'),
            'message': Field<String?>('message'),
          }),
      ];
}
