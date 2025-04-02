import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/core/account/current_account_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../profile/profile_schema.schema.dart';
import '../../trade_request/trade_request_schema.schema.dart';
import '../i_user_rating_repo.dart';
import '../user_rating_schema.schema.dart';
import 'user_rating_list_pagination_provider.dart';
import 'user_rating_list_provider.dart';

part 'user_rating_create_provider.g.dart';

@formWidget
@riverpod
class UserRatingCreate extends _$UserRatingCreateWidget {
  @override
  UserRatingCreateParam build({
    required ProfileId ratedProfileId,
    TradeRequestId? tradeRequestId,
  }) =>
      UserRatingCreateParam(
        raterId: ref.read(currentProfileIdProvider)!,
        ratedUserId: ratedProfileId,
        tradeRequestId: tradeRequestId,
        rating: 5,
        comment: '',
      );

  @override
  Future<UserRatingModel> submit(UserRatingCreateParam state) async {
    return await ref.read(userRatingRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(UserRatingModel result) {
    ref.invalidate(userRatingListProvider);
    ref.invalidate(userRatingListPaginationProvider);
  }
}
