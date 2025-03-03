import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../auth.dart';

part 'i_auth_repo.g.dart';

@Riverpod(keepAlive: true)
IAuthRepo authRepo(Ref ref) => _Impl(ref);

abstract class IAuthRepo {
  Future<Either<Failure, Option<UserId>>> currentId();
  Future<Either<Failure, UserId>> signIn(SignInParam param);
  Future<Either<Failure, Unit>> signOut();
  Future<Either<Failure, UserId>> signUp(SignUpParam param);
  Future<Either<Failure, Unit>> forgotPassword(ForgotPasswordParam param);
  Future<Either<Failure, Unit>> verifyResetCode(VerifyResetCodeParam param);
  Future<Either<Failure, Unit>> resetPassword(ResetPasswordParam param);
}

class _Impl implements IAuthRepo {
  _Impl(this._ref);

  SupabaseClient get _adminClient => SupabaseClient(
        _ref.supabaseClient.rest.url.split('/rest')[0],
        integrationMode.isDevelop
            ? 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImV4cCI6MTk4MzgxMjk5Nn0.EGIM96RAZx35lJzdJsyH-qQwv8Hdp7fsn3W0YpN81IU'
            : throw UnimplementedError(),
      );

  final Ref _ref;

  // Store verified user IDs for password reset
  final Map<String, String> _verifiedResetUsers = {};

  @override
  Future<Either<Failure, Option<UserId>>> currentId() async {
    return await errorHandler(() async {
      final user = _ref.supabaseClient.auth.currentSession?.user;
      if (user == null) return right(Option.none());
      return right(Option.fromNullable(UserId.fromValue(user.id)));
    });
  }

  @override
  Future<Either<Failure, UserId>> signIn(SignInParam param) async {
    return await errorHandler(() async {
      final result = await _ref.supabaseClient.auth.signInWithPassword(
        email: param.email,
        password: param.password.trim(),
      );

      return right(UserId.fromValue(result.user!.id));
    });
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    return await errorHandler(() async {
      await _ref.supabaseClient.auth.signOut();
      return right(unit);
    });
  }

  @override
  Future<Either<Failure, UserId>> signUp(SignUpParam param) async {
    return await errorHandler(() async {
      final result = await _ref.supabaseClient.auth.signUp(
        email: param.email,
        password: param.password,
        data: {
          'fullname': param.name,
          'age': param.age,
        },
      );

      return right(UserId.fromValue(result.user!.id));
    });
  }

  Future<bool> _checkEmailExists(String email) async {
    String? createdUserId;
    try {
      final result = await _adminClient.auth.admin.createUser(
        AdminUserAttributes(
          email: email.trim(),
          password: 'password',
          emailConfirm: true,
        ),
      );
      createdUserId = result.user?.id;
      return false;
    } on AuthException catch (e) {
      if (e.message.toLowerCase().contains("email address already registered by another user") ||
          e.message.toLowerCase().contains('been registered')) {
        // Only workaround which allow me to retrieve user id by email address
        final userRes = await _adminClient.auth.admin
            .generateLink(email: email.trim(), type: GenerateLinkType.magiclink);
        _verifiedResetUsers[email] = userRes.user.id;
        return true;
      }
      rethrow;
    } finally {
      if (createdUserId != null) {
        await _adminClient.auth.admin.deleteUser(createdUserId);
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> forgotPassword(ForgotPasswordParam param) async {
    return await errorHandler(() async {
      if (!await _checkEmailExists(param.email)) {
        throw 'Email not found';
      }

      // In a real implementation, we would send an email with a reset link or code
      // For now, we just log that we would send an email
      Kimapp.instance.log(
        LoggerType.debug,
        message: "Password reset email would be sent to: ${param.email}",
        stackTrace: StackTrace.current,
      );

      return right(unit);
    });
  }

  @override
  Future<Either<Failure, Unit>> verifyResetCode(VerifyResetCodeParam param) async {
    return await errorHandler(() async {
      if (param.code != "1111") {
        Kimapp.instance.log(
          LoggerType.debug,
          message: "Invalid verification code attempt: ${param.code} for email: ${param.email}",
          stackTrace: StackTrace.current,
        );
        return left(Failure.fromString('Invalid verification code'));
      }
      return right(unit);
    });
  }

  @override
  Future<Either<Failure, Unit>> resetPassword(ResetPasswordParam param) async {
    return await errorHandler(() async {
      // Check if the email has been verified
      final userId = _verifiedResetUsers[param.email];
      if (userId == null) {
        Kimapp.instance.log(
          LoggerType.debug,
          message: "Password reset attempted without verification for email: ${param.email}",
          stackTrace: StackTrace.current,
        );
        return left(Failure.fromString('Please verify your email first'));
      }
      await _adminClient.auth.admin.updateUserById(
        userId,
        attributes: AdminUserAttributes(
          password: param.password.trim(),
        ),
      );

      _verifiedResetUsers.remove(param.email);
      return right(unit);
    });
  }
}
