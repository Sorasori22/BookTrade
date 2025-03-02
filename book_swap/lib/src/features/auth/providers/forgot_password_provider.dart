import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../auth.dart';

part 'forgot_password_provider.g.dart';

@riverpod
class ForgotPassword extends _$ForgotPassword {
  @override
  ProviderStatus<Unit> build() => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call(ForgotPasswordParam param) async {
    return await perform(
      (state) async {
        final result = await ref.read(authRepoProvider).forgotPassword(param);
        return result.getOrThrow();
      },
    );
  }
}

@riverpod
class VerifyResetCode extends _$VerifyResetCode {
  @override
  ProviderStatus<Unit> build() => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call(VerifyResetCodeParam param) async {
    return await perform(
      (state) async {
        final result = await ref.read(authRepoProvider).verifyResetCode(param);
        return result.getOrThrow();
      },
    );
  }
}

@riverpod
class ResetPassword extends _$ResetPassword {
  @override
  ProviderStatus<Unit> build() => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call(ResetPasswordParam param) async {
    return await perform(
      (state) async {
        final result = await ref.read(authRepoProvider).resetPassword(param);
        return result.getOrThrow();
      },
    );
  }
}
