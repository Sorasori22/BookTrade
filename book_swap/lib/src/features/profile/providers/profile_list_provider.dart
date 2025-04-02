import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_profile_repo.dart';
import '../profile_schema.schema.dart';

part 'profile_list_provider.g.dart';

@stateWidget
@riverpod
class ProfileList extends _$ProfileList with IListAsyncNotifier {
  @override
  bool comparer(a, b) => a.id == b.id;

  @override
  FutureOr<IList<ProfileModel>> build() {
    return ref.watch(profileRepoProvider).findAll().getOrThrow();
  }
}
