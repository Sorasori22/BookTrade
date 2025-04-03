import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_notification_repo.dart';
import '../notification_schema.schema.dart';
import 'notification_list_pagination_provider.dart';

part 'notification_delete_provider.g.dart';

@riverpod
class NotificationDelete extends _$NotificationDelete {
  @override
  ProviderStatus<Unit> build(NotificationId id) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        final result = await ref.read(notificationRepoProvider).delete(id);
        return result.getOrThrow();
      },
      onSuccess: (success) {
        NotificationPaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
      },
    );
  }
}
