import 'package:freezed_annotation/freezed_annotation.dart';

import '../../book/book_schema.schema.dart';
import '../../profile/profile_schema.schema.dart';
import '../trade_request_schema.dart';

part 'trade_request_list_param.freezed.dart';

@freezed
class TradeRequestListParam with _$TradeRequestListParam {
  const factory TradeRequestListParam({
    ProfileId? requesterId,
    ProfileId? ownerId,
    BookId? bookId,
    BookId? offeredBookId,
    TradeRequestStatus? status,
  }) = _TradeRequestListParam;
}
