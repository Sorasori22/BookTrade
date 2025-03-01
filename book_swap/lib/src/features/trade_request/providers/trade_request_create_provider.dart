import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../book/book_schema.schema.dart';
import '../../profile/profile_schema.schema.dart';
import '../i_trade_request_repo.dart';
import '../trade_request_schema.schema.dart';
import 'trade_request_list_pagination_provider.dart';
import 'trade_request_list_provider.dart';

part 'trade_request_create_provider.g.dart';

@formWidget
@riverpod
class TradeRequestCreate extends _$TradeRequestCreateWidget {
  @override
  TradeRequestCreateParam build() => TradeRequestCreateParam(
        requesterId: ProfileId.fromValue(''),
        ownerId: ProfileId.fromValue(''),
        bookId: BookId.fromValue(0),
        offeredBookId: BookId.fromValue(0),
        message: '',
      );

  @override
  Future<TradeRequestModel> submit(TradeRequestCreateParam state) async {
    return await ref.read(tradeRequestRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(TradeRequestModel result) {
    ref.read(tradeRequestListProvider.notifier).insertItem(result);
    ref.invalidate(tradeRequestListPaginationProvider);
  }
}
