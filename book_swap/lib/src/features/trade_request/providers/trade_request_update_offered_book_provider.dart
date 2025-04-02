import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../book/book_schema.schema.dart';
import '../i_trade_request_repo.dart';

part 'trade_request_update_offered_book_provider.g.dart';

@riverpod
class TradeRequestUpdateOfferedBook extends _$TradeRequestUpdateOfferedBook {
  @override
  ProviderStatus<Unit> build(TradeRequestId tradeRequestId) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call({
    required BookId offeredBookId,
  }) async {
    return await perform(
      (state) async {
        return ref
            .read(tradeRequestRepoProvider)
            .updateOfferedBook(tradeRequestId, offeredBookId)
            .getOrThrow();
      },
    );
  }
}
