import 'package:book_swap/src/features/chat/providers/chat_list_pagination_provider.dart';
import 'package:book_swap/src/features/message/i_message_repo.dart';
import 'package:book_swap/src/features/message/message_schema.schema.dart';
import 'package:book_swap/src/features/message/providers/message_list_pagination_provider.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_unsent_provider.g.dart';

@riverpod
class MessageUnsent extends _$MessageUnsent {
  @override
  ProviderStatus<Unit> build(MessageId messageId) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        return ref.read(messageRepoProvider).unsent(messageId).getOrThrow();
      },
      onSuccess: (success) {
        ref.invalidate(chatListPaginationProvider);
        ref.invalidate(messageListPaginationProvider);
      },
    );
  }
}
