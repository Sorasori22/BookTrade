import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/account/current_account_provider.widget.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../router/app_router.gr.dart';

class CurrentUserAvatar extends ConsumerWidget {
  const CurrentUserAvatar({super.key, this.size, this.navigateToProfile = true});

  final double? size;
  final bool navigateToProfile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: navigateToProfile
          ? () {
              context.navigateTo(
                ProfileRootRoute(
                  children: [
                    ProfileRoute(),
                  ],
                ),
              );
            }
          : null,
      child: CurrentAccountSelectWidget(
        selector: (state) => (state.account?.profile.avatar, state.account?.profile.fullname),
        builder: (context, ref, value) {
          return UserAvatar(
            imageObject: value.$1,
            size: size,
          );
        },
      ),
    );
  }
}
