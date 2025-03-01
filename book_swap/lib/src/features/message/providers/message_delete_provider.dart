import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../message_schema.schema.dart';
import '../i_message_repo.dart';
import 'message_detail_provider.dart';
import 'message_list_pagination_provider.dart';
import 'message_list_provider.dart';

part 'message_delete_provider.g.dart';

@riverpod
class MessageDelete extends _$MessageDelete {
  @override
  ProviderStatus<Unit> build(MessageId id) => const ProviderStatus.initial();


  Future<ProviderStatus<Unit>> call() async {
    return await perform((state) async {
     final result = await ref.read(messageRepoProvider).delete(id);
     return result.getOrThrow();
}, onSuccess: (success) {
    ref.read(messageListProvider.notifier).removeWhere((e) => e.id == id);
    ref.invalidate(messageDetailProvider(id));

    /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
    /// since it will help accurate the data consistency
    MessagePaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
  },);
  }
}