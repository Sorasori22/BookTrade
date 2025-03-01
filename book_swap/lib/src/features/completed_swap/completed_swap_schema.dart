import 'package:kimapp/kimapp.dart';

import '../book/book_schema.schema.dart';
import '../profile/profile_schema.schema.dart';

@Schema(
  tableName: 'completed_swaps',
  className: 'CompletedSwap',
  baseModelName: 'CompletedSwapModel',
)
class CompletedSwapSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('CompletedSwapId');
  final requesterId = Field<ProfileId>('requester_id');
  final ownerId = Field<ProfileId>('owner_id');
  final requesterBookId = Field<BookId>('requester_book_id');
  final ownerBookId = Field<BookId>('owner_book_id');
  final tradeRequestId = Field<int?>('trade_request_id');
  final completedAt = Field<DateTime>('completed_at');

  // Join fields
  final requester =
      Field.join<ProfileLiteModel>().withForeignKey('requester_id').withCandidateKey('id');
  final owner = Field.join<ProfileLiteModel>().withForeignKey('owner_id').withCandidateKey('id');
  final requesterBook =
      Field.join<BookLiteModel>().withForeignKey('requester_book_id').withCandidateKey('id');
  final ownerBook =
      Field.join<BookLiteModel>().withForeignKey('owner_book_id').withCandidateKey('id');

  @override
  List<Model> get models => [
        Model('CompletedSwapLiteModel')
          ..table()
          ..addFields({
            'id': id,
            'requesterId': requesterId,
            'ownerId': ownerId,
            'requesterBookId': requesterBookId,
            'ownerBookId': ownerBookId,
            'completedAt': completedAt,
          }),
        Model('CompletedSwapDetailModel')
          ..table()
          ..inheritAllFromBase()
          ..addFields({
            'requester': requester,
            'owner': owner,
            'requesterBook': requesterBook,
            'ownerBook': ownerBook,
          }),
        Model('CompletedSwapCreateParam')
          ..addFields({
            'requesterId': requesterId,
            'ownerId': ownerId,
            'requesterBookId': requesterBookId,
            'ownerBookId': ownerBookId,
            'tradeRequestId': tradeRequestId,
          }),
        Model('CompletedSwapUpdateParam')
          ..addFields({
            'completedAt': Field<DateTime?>('completed_at'),
          }),
      ];
}
