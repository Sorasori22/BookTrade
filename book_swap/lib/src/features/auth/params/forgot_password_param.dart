import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_param.freezed.dart';

@freezed
class ForgotPasswordParam with _$ForgotPasswordParam {
  const factory ForgotPasswordParam({
    required String email,
  }) = _ForgotPasswordParam;
}

@freezed
class VerifyResetCodeParam with _$VerifyResetCodeParam {
  const factory VerifyResetCodeParam({
    required String email,
    required String code,
  }) = _VerifyResetCodeParam;
}

@freezed
class ResetPasswordParam with _$ResetPasswordParam {
  const factory ResetPasswordParam({
    required String email,
    required String password,
  }) = _ResetPasswordParam;
}
