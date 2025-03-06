import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/trade_request/params/trade_request_list_param.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_trade_request_repo.dart';
import '../trade_request_schema.schema.dart';
import 'trade_request_detail_provider.dart';
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
    ref
        .read(
          tradeRequestListProvider(TradeRequestListParam(requesterId: result.requesterId)).notifier,
        )
        .updateItem(result);
    ref.read(tradeRequestDetailProvider(tradeRequestId).notifier).updateState((_) => result);
  }
}
