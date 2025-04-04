import 'package:book_swap/src/features/auth/auth.dart';
import 'package:book_swap/src/features/profile/i_profile_repo.dart';
import 'package:book_swap/src/features/profile/providers/profile_detail_provider.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/account.dart';

part 'update_email_provider.g.dart';

@riverpod
class UpdateEmail extends _$UpdateEmail {
  @override
  ProviderStatus<Unit> build() => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call({
    required String currentPassword,
    required String newEmail,
  }) async {
    return await perform(
      (state) async {
        final isPasswordCorrect =
            await ref.read(authRepoProvider).checkPassword(currentPassword).getOrThrow();

        if (!isPasswordCorrect) {
          throw 'Current password is incorrect';
        }

        final userId = ref.read(currentUserIdProvider)!;

        await ref
            .read(authRepoProvider)
            .updateEmail(
              userId: userId,
              email: newEmail,
            )
            .getOrThrow();

        // Update user email
        await ref.read(profileRepoProvider).updateEmail(userId.toProfileId(), email: newEmail);

        return unit;
      },
      onSuccess: (success) {
        ref.invalidate(profileDetailProvider);
        ref.invalidateSelf();
      },
    );
  }
}
