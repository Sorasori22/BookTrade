import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_message_repo.dart';
import '../message_schema.schema.dart';

part 'message_list_provider.g.dart';

@stateWidget
@riverpod
class MessageList extends _$MessageList with IListAsyncNotifier<MessageModel> {
  @override
  bool identity(MessageModel item) => item.id == item.id;

  @override
  FutureOr<IList<MessageModel>> build() {
    return ref.watch(messageRepoProvider).findAll().getOrThrow();
  }
}
