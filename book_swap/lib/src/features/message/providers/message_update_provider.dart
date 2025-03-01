import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_message_repo.dart';
import '../message_schema.schema.dart';
import 'message_detail_provider.dart';
import 'message_list_pagination_provider.dart';
import 'message_list_provider.dart';

part 'message_update_provider.g.dart';

@formWidget
@riverpod
class MessageUpdate extends _$MessageUpdateWidget {
  @override
  Future<MessageUpdateParam> build(MessageId messageId) async {
    final result = await ref.read(messageRepoProvider).findOne(messageId).getOrThrow();
    return MessageUpdateParam(
      read: result.read,
    );
  }

  @override
  Future<MessageModel> submit(MessageUpdateParam state) async {
    return await ref.read(messageRepoProvider).update(messageId, data: state).getOrThrow();
  }

  @override
  void onSuccess(MessageModel result) {
    ref.read(messageListProvider.notifier).updateItem(result);
    ref.read(messageDetailProvider(messageId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    MessagePaginationTracker.instance.updatePaginatedItem(ref, result);

    super.onSuccess(result);
  }
}
