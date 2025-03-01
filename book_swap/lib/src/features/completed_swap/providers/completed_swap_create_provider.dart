import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../book/book_schema.schema.dart';
import '../../profile/profile_schema.schema.dart';
import '../completed_swap_schema.schema.dart';
import '../i_completed_swap_repo.dart';
import 'completed_swap_list_pagination_provider.dart';
import 'completed_swap_list_provider.dart';

part 'completed_swap_create_provider.g.dart';

@formWidget
@riverpod
class CompletedSwapCreate extends _$CompletedSwapCreateWidget {
  @override
  CompletedSwapCreateParam build() => CompletedSwapCreateParam(
        requesterId: ProfileId.fromValue(''),
        ownerId: ProfileId.fromValue(''),
        requesterBookId: BookId.fromValue(0),
        ownerBookId: BookId.fromValue(0),
        tradeRequestId: null,
      );

  @override
  Future<CompletedSwapModel> submit(CompletedSwapCreateParam state) async {
    return await ref.read(completedSwapRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(CompletedSwapModel result) {
    ref.read(completedSwapListProvider.notifier).insertItem(result);
    ref.invalidate(completedSwapListPaginationProvider);
  }
}
