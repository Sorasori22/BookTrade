import 'package:freezed_annotation/freezed_annotation.dart';

import '../../profile/profile_schema.schema.dart';
import '../../trade_request/trade_request_schema.schema.dart';

part 'user_rating_list_param.freezed.dart';

@freezed
class UserRatingListParam with _$UserRatingListParam {
  const factory UserRatingListParam({
    ProfileId? raterId,
    ProfileId? ratedUserId,
    TradeRequestId? tradeRequestId,
    int? minRating,
    int? maxRating,
  }) = _UserRatingListParam;
}
