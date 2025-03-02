import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/auth/params/sign_up_param.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../auth.dart';

part 'sign_up_provider.g.dart';

@formWidget
@riverpod
class SignUp extends _$SignUpWidget {
  @override
  SignUpParam build() {
    return SignUpParam(
      email: '',
      password: '',
      name: '',
      age: null,
    );
  }

  @override
  Future<UserId> submit(SignUpParam state) {
    return ref.read(authRepoProvider).signUp(state).getOrThrow();
  }

  void extractNameFromEmail() {
    // If name already exists, do nothing
    if (state.name.isNotEmpty) return;

    String name = state.email.split('@')[0];
    // Replace numbers and special characters with empty string
    name = name.replaceAll(RegExp(r'[0-9_\-\.]+'), ' ').trim();
    // Capitalize first letter of each word
    name = name
        .split(' ')
        .map(
          (word) => word.isNotEmpty ? '${word[0].toUpperCase()}${word.substring(1)}' : '',
        )
        .join(' ');

    state = state.copyWith(name: name);
  }
}
