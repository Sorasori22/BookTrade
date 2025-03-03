import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../completed_swap_schema.schema.dart';
import '../i_completed_swap_repo.dart';

part 'completed_swap_list_provider.g.dart';

@stateWidget
@riverpod
class CompletedSwapList extends _$CompletedSwapList with IListAsyncNotifier<CompletedSwapModel> {
  @override
  bool identity(CompletedSwapModel item) => item.id == item.id;

  @override
  FutureOr<IList<CompletedSwapModel>> build() {
    return ref.watch(completedSwapRepoProvider).findAll().getOrThrow();
  }
}
