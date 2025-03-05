import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/profile/providers/profile_detail_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/auth.dart';

part 'current_account_provider.freezed.dart';
part 'current_account_provider.g.dart';

@Riverpod(keepAlive: true)
UserId? currentUserId(Ref ref) =>
    ref.watch(authStateProvider).whenOrNull(authenticated: (id) => id);

@riverpod
ProfileId? currentProfileId(Ref ref) =>
    ref.watch(currentAccountProvider.select((state) => state.valueOrNull?.profile?.id));

@freezed
class CurrentAccountState with _$CurrentAccountState {
  const CurrentAccountState._();

  /// None mean no data attach to, might be in unauthenticated state
  const factory CurrentAccountState.none() = _None;

  const factory CurrentAccountState(ProfileDetailModel profile) = CurrentAccountStateData;

  CurrentAccountStateData? get account => mapOrNull((v) => v);
  ProfileDetailModel? get profile => mapOrNull((v) => v.profile);
}

extension CurrentAccountStateDataX on CurrentAccountStateData {}

@Riverpod(keepAlive: true)
@stateWidget
class CurrentAccount extends _$CurrentAccount {
  @override
  FutureOr<CurrentAccountState> build() async {
    final uid = ref.watch(currentUserIdProvider);
    if (uid == null) return const CurrentAccountState.none();

    try {
      final profile = await ref.watch(profileDetailProvider(uid.toProfileId()).future);
      return CurrentAccountStateData(profile);
    } on Failure catch (e) {
      if (e.isNotFoundFailure) {
        await ref.read(signOutProvider.notifier).call();
      }
      rethrow;
    }
  }
}
