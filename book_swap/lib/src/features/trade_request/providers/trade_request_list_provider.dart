import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/trade_request/params/trade_request_list_param.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_trade_request_repo.dart';
import '../trade_request_schema.schema.dart';

part 'trade_request_list_provider.g.dart';

@stateWidget
@riverpod
class TradeRequestList extends _$TradeRequestList with IListAsyncNotifier<TradeRequestModel> {
  @override
  bool comparer(a, b) => a.id == b.id;

  @override
  FutureOr<IList<TradeRequestModel>> build(TradeRequestListParam param) {
    return ref.watch(tradeRequestRepoProvider).findAll(param).getOrThrow();
  }
}
