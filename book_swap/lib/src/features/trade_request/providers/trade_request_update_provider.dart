import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_trade_request_repo.dart';
import '../trade_request_schema.schema.dart';
import 'trade_request_detail_provider.dart';
import 'trade_request_list_pagination_provider.dart';
import 'trade_request_list_provider.dart';

part 'trade_request_update_provider.g.dart';

@formWidget
@riverpod
class TradeRequestUpdate extends _$TradeRequestUpdateWidget {
  @override
  Future<TradeRequestUpdateParam> build(TradeRequestId tradeRequestId) async {
    final result = await ref.read(tradeRequestRepoProvider).findOne(tradeRequestId).getOrThrow();
    return TradeRequestUpdateParam(
      status: result.status,
      message: result.message,
    );
  }

  @override
  Future<TradeRequestModel> submit(TradeRequestUpdateParam state) async {
    return await ref
        .read(tradeRequestRepoProvider)
        .update(tradeRequestId, data: state)
        .getOrThrow();
  }

  @override
  void onSuccess(TradeRequestModel result) {
    ref.read(tradeRequestListProvider.notifier).updateItem(result);
    ref.read(tradeRequestDetailProvider(tradeRequestId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    TradeRequestPaginationTracker.instance.updatePaginatedItem(ref, result);

    super.onSuccess(result);
  }
}
