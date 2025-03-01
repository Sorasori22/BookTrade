import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../profile_schema.schema.dart';
import '../i_profile_repo.dart';
import 'profile_detail_provider.dart';
import 'profile_list_pagination_provider.dart';
import 'profile_list_provider.dart';

part 'profile_delete_provider.g.dart';

@riverpod
class ProfileDelete extends _$ProfileDelete {
  @override
  ProviderStatus<Unit> build(ProfileId id) => const ProviderStatus.initial();


  Future<ProviderStatus<Unit>> call() async {
    return await perform((state) async {
     final result = await ref.read(profileRepoProvider).delete(id);
     return result.getOrThrow();
}, onSuccess: (success) {
    ref.read(profileListProvider.notifier).removeWhere((e) => e.id == id);
    ref.invalidate(profileDetailProvider(id));

    /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
    /// since it will help accurate the data consistency
    ProfilePaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
  },);
  }
}