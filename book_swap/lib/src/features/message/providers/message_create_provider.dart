import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../profile/profile_schema.schema.dart' show ProfileId;
import '../i_message_repo.dart';
import '../message_schema.schema.dart';
import 'message_list_pagination_provider.dart';
import 'message_list_provider.dart';

part 'message_create_provider.g.dart';

@formWidget
@riverpod
class MessageCreate extends _$MessageCreateWidget {
  @override
  MessageCreateParam build() => MessageCreateParam(
        senderId: ProfileId.fromValue(''),
        recipientId: ProfileId.fromValue(''),
        content: '',
        tradeRequestId: null,
      );

  @override
  Future<MessageModel> submit(MessageCreateParam state) async {
    return await ref.read(messageRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(MessageModel result) {
    ref.read(messageListProvider.notifier).insertItem(result);
    ref.invalidate(messageListPaginationProvider);
  }
}
