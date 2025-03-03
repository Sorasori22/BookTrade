import 'package:book_swap/src/core/account/current_account_provider.widget.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CurrentUserAvatar extends ConsumerWidget {
  const CurrentUserAvatar({super.key, this.size});

  final double? size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CurrentAccountSelectWidget(
      selector: (state) => (state.account?.profile.avatar, state.account?.profile.fullname),
      builder: (context, ref, value) {
        return UserAvatar(
          imageObject: value.$1,
          fallback: value.$2?.substring(0, 2),
          size: size,
        );
      },
    );
  }
}
