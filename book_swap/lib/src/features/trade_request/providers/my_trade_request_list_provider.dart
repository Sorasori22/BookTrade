import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/core/account/account.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/trade_request/params/trade_request_list_param.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_list_provider.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../trade_request_schema.dart';

part 'my_trade_request_list_provider.g.dart';

/// List of trade requests people requested to me
@stateWidget
@riverpod
class MyTradeRequestList extends _$MyTradeRequestList with IListAsyncNotifier {
  @override
  bool identity(TradeRequestModel item) => item.id == item.id;

  @override
  FutureOr<IList<TradeRequestModel>> build({
    ProfileId? requesterId,
    TradeRequestStatus? status,
  }) async {
    final myId = ref.watch(currentProfileIdProvider);
    if (myId == null) {
      return const IList.empty();
    }
    final param = TradeRequestListParam(
      ownerId: myId,
      requesterId: requesterId,
      status: status,
    );
    return await ref.watch(tradeRequestListProvider(param).future);
  }
}
