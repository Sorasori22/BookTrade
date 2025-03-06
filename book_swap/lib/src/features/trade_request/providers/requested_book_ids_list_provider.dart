import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/current_account_provider.dart';
import '../i_trade_request_repo.dart';
import '../params/trade_request_list_param.dart';
import '../trade_request_schema.dart';

part 'requested_book_ids_list_provider.g.dart';

/// List of book ids which I requested and is pending
@stateWidget
@riverpod
class RequestedBookIdsList extends _$RequestedBookIdsList with IListAsyncNotifier {
  @override
  bool identity(BookId item) => item == item;

  @override
  FutureOr<IList<BookId>> build() {
    final myId = ref.watch(currentProfileIdProvider);
    if (myId == null) {
      return const IList.empty();
    }

    final param = TradeRequestListParam(
      requesterId: myId,
      status: TradeRequestStatus.pending,
    );

    return ref
        .watch(tradeRequestRepoProvider)
        .findAll(param)
        .mapOrThrow((e) => e.map((e) => e.bookId).toIList());
  }
}
