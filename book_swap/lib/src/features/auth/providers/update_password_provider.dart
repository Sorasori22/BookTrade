import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/account.dart';
import '../repositories/i_auth_repo.dart';

part 'update_password_provider.g.dart';

@riverpod
class UpdatePassword extends _$UpdatePassword {
  @override
  ProviderStatus<Unit> build() => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    return await perform(
      (state) async {
        if (newPassword != confirmPassword) {
          throw 'New password and confirm password do not match';
        }

        final isPasswordCorrect =
            await ref.read(authRepoProvider).checkPassword(currentPassword).getOrThrow();

        if (!isPasswordCorrect) {
          throw 'Current password is incorrect';
        }

        return ref
            .read(authRepoProvider)
            .updatePassword(
              userId: ref.read(currentUserIdProvider)!,
              password: newPassword,
            )
            .getOrThrow();
      },
      onSuccess: (success) {
        ref.invalidateSelf();
      },
    );
  }
}
