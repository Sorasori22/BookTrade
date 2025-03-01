import 'package:auto_route/auto_route.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/helpers/build_context_helper.dart';
import '../../../features/user/providers/user_detail_provider.widget.dart';
import '../../../features/user/user_schema.schema.dart';
import '../../router/app_router.gr.dart';
import '../../widgets/buttons/app_button.dart';
import '../../widgets/feedback/app_avatar.dart';
import '../../widgets/layouts/app_card.dart';
import '../../widgets/typography/app_text.dart';

@RoutePage()
class UserDetailPage extends StatefulHookConsumerWidget {
  const UserDetailPage({
    super.key,
    @PathParam('id') required this.userIdString,
  });

  final String userIdString;

  static void show(BuildContext context, UserId userId) {
    context.pushRoute(UserDetailRoute(userIdString: userId.toString()));
  }

  @override
  ConsumerState<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends ConsumerState<UserDetailPage> {
  @override
  Widget build(BuildContext context) {
    final userId = UserId.fromValue(widget.userIdString.toInt());

    return Scaffold(
      appBar: AppBar(
        title: const AppText.titleLarge('User Profile'),
      ),
      body: UserDetailProviderScope(
        id: userId,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _UserHeader(),
              const SizedBox(height: 24),
              _UserDetails(),
              const SizedBox(height: 24),
              _UserActions(),
            ],
          ),
        ),
      ),
    );
  }
}

class _UserHeader extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return UserDetailSelectWidget(
      selector: (state) => state,
      builder: (context, ref, userState) {
        final userName = userState.name ?? 'Anonymous User';
        final userInitials = userName.isNotEmpty ? userName.substring(0, 1).toUpperCase() : 'U';

        return Center(
          child: Column(
            children: [
              AppAvatar(
                initials: userInitials,
                size: AppAvatarSize.xlarge,
                backgroundColor: context.colors.primary,
                foregroundColor: context.colors.onPrimary,
                borderWidth: 2,
                borderColor: context.colors.secondary,
              ),
              const SizedBox(height: 16),
              AppText.headlineSmall(
                userName,
                color: context.colors.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _UserDetails extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return UserDetailSelectWidget(
      selector: (state) => state,
      builder: (context, ref, userState) {
        return AppCard(
          elevation: AppCardElevation.low,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.titleMedium(
                'User Information',
                color: context.colors.primary,
                fontWeight: FontWeight.bold,
              ),
              const Divider(),
              const SizedBox(height: 12),
              _infoRow(
                context,
                'ID',
                userState.id.toString(),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _infoRow(BuildContext context, String label, String value) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: AppText.bodyMedium(
            label,
            fontWeight: FontWeight.w500,
            color: context.colors.onSurface.withOpacity(0.7),
          ),
        ),
        Expanded(
          flex: 3,
          child: AppText.bodyMedium(
            value,
            color: context.colors.onSurface,
          ),
        ),
      ],
    );
  }
}

class _UserActions extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppButton(
          label: 'View Books',
          icon: Icons.book_outlined,
          variant: AppButtonVariant.primary,
          leadingIcon: true,
          onPressed: () {
            // Navigate to user's books
          },
        ),
        const SizedBox(height: 12),
        AppButton(
          label: 'Send Message',
          icon: Icons.message_outlined,
          variant: AppButtonVariant.outline,
          leadingIcon: true,
          onPressed: () {
            // Open message dialog
          },
        ),
        const SizedBox(height: 12),
        AppButton(
          label: 'Report User',
          icon: Icons.flag_outlined,
          variant: AppButtonVariant.text,
          leadingIcon: true,
          onPressed: () {
            // Open report dialog
          },
        ),
      ],
    );
  }
}
