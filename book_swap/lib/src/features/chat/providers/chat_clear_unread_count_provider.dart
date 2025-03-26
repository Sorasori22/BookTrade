import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_chat_repo.dart';
import 'chat_list_pagination_provider.dart';

part 'chat_clear_unread_count_provider.g.dart';

@riverpod
class ChatClearUnreadCount extends _$ChatClearUnreadCount {
  @override
  ProviderStatus<Unit> build(ProfileId recipientId) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        return ref.read(chatRepoProvider).clearUnreadCount(senderId: recipientId).getOrThrow();
      },
      onSuccess: (success) {
        ChatPaginationTracker.instance.clearUnreadCount(ref, recipientId);
        ref.invalidateSelf();
      },
    );
  }
}
