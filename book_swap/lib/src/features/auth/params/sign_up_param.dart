import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_param.freezed.dart';

@freezed
class SignUpParam with _$SignUpParam {
  const SignUpParam._();

  const factory SignUpParam({
    required String email,
    required String password,
    required String name, // extract from email first
    required int? age,
  }) = _SignUpParam;
}
