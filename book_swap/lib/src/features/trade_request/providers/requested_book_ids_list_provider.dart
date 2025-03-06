import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/current_account_provider.dart';
import '../i_trade_request_repo.dart';
import '../params/trade_request_list_param.dart';
import '../trade_request_schema.dart';

part 'requested_book_ids_list_provider.g.dart';

@stateWidget
@riverpod
class PrendingTradeRequestList extends _$PrendingTradeRequestList with IListAsyncNotifier {
  @override
  bool identity(TradeRequestModel item) => item == item;

  @override
  FutureOr<IList<TradeRequestModel>> build() {
    final myId = ref.watch(currentProfileIdProvider);
    if (myId == null) {
      return const IList.empty();
    }

    final param = TradeRequestListParam(
      requesterId: myId,
      status: TradeRequestStatus.pending,
    );

    return ref.watch(tradeRequestRepoProvider).findAll(param).getOrThrow();
  }
}
