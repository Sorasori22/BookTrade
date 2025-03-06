import 'package:book_swap/src/core/account/current_account_provider.dart';
import 'package:book_swap/src/features/book/providers/book_detail_provider.dart';
import 'package:book_swap/src/features/trade_request/providers/requested_book_ids_list_provider.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../book/book_schema.schema.dart';
import '../i_trade_request_repo.dart';
import '../trade_request_schema.schema.dart';

part 'trade_request_create_provider.g.dart';

@riverpod
class TradeRequestCreate extends _$TradeRequestCreate {
  @override
  ProviderStatus<TradeRequestModel> build(BookId bookId) => const ProviderStatus.initial();

  Future<ProviderStatus<TradeRequestModel>> call() async {
    return await perform(
      (state) async {
        final requesterId = ref.read(currentProfileIdProvider)!;
        final ownerId = await ref.read(bookDetailProvider(bookId).selectAsync((v) => v.ownerId));
        final param = TradeRequestCreateParam(
          requesterId: requesterId,
          ownerId: ownerId,
          bookId: bookId,
        );

        final result = await ref.read(tradeRequestRepoProvider).create(param).getOrThrow();

        return result;
      },
      onSuccess: (success) {
        ref.read(requestedBookIdsListProvider.notifier).insertItem(success.bookId);
      },
    );
  }
}
