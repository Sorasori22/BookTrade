import 'package:book_swap/src/features/message/i_message_repo.dart';
import 'package:book_swap/src/features/message/message_schema.schema.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:dartx/dartx_io.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/current_account_provider.dart';

part 'message_send_text_provider.g.dart';

@riverpod
class MessageSendText extends _$MessageSendText {
  @override
  ProviderStatus<MessageModel> build(ProfileId recipientId) => const ProviderStatus.initial();

  Future<ProviderStatus<MessageModel>> call({
    required String content,
  }) async {
    return await perform(
      (state) async {
        if (content.isBlank) throw 'Content is required';

        final param = MessageCreateParam(
          content: content,
          recipientId: recipientId,
          senderId: ref.read(currentProfileIdProvider)!,
          tradeRequestId: null,
        );

        return ref.read(messageRepoProvider).create(param).getOrThrow();
      },
      onSuccess: (success) {
        ref.invalidateSelf();
      },
    );
  }
}
