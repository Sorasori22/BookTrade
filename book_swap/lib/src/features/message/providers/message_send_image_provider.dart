import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:book_swap/src/features/message/message_schema.schema.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/account.dart';
import '../i_message_repo.dart';

part 'message_send_image_provider.g.dart';

@riverpod
class MessageSendImage extends _$MessageSendImage {
  @override
  ProviderStatus<MessageModel> build(ProfileId recipientId) => const ProviderStatus.initial();

  Future<ProviderStatus<MessageModel>> call({
    required XFile image,
  }) async {
    return await perform(
      (state) async {
        return uploadImageWrapper(
          image,
          (path) => ImageObject(path: path),
          callback: (image) async {
            final param = MessageCreateParam(
              content: 'Send an image',
              recipientId: recipientId,
              senderId: ref.read(currentProfileIdProvider)!,
              image: image,
              tradeRequestId: null,
            );

            return await ref.read(messageRepoProvider).create(param).getOrThrow();
          },
        );
      },
      onSuccess: (success) {
        ref.invalidateSelf();
      },
    );
  }
}
