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
  final requester = Field.join<ProfileLiteModel>().withForeignKey('requester_id');
  final owner = Field.join<ProfileLiteModel>().withForeignKey('owner_id');
  final requesterBook = Field.join<BookLiteModel>().withForeignKey('requester_book_id');
  final ownerBook = Field.join<BookLiteModel>().withForeignKey('owner_book_id');
}
