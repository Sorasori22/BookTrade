import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/current_account_provider.dart';
import '../profile_schema.schema.dart';

part 'profile_me_provider.g.dart';

@riverpod
ProfileDetailModel profileMe(Ref ref) {
  return ref.watch(currentAccountProvider).requireValue.profile!;
}
