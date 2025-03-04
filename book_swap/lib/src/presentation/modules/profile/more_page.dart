import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/features/auth/auth.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/current_user_avatar.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/dialogs/app_dialog.dart';
import 'package:book_swap/src/presentation/widgets/lists/settings_list_tile.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/helpers/build_context_helper.dart';
import '../../app/app_style.dart';

@RoutePage()
class MorePage extends ConsumerWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
        leading: const AutoLeadingButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AS.sidePadding).copyWith(top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(height: 0),
              _buildProfileSection(context),
              Divider(),
              AS.hGap16,
              _buildSectionTitle(context, 'Account'),
              _buildAccountSection(context),
              AS.hGap16,
              _buildSectionTitle(context, 'Preferences'),
              _buildPreferencesSection(context),
              AS.hGap16,
              _buildSectionTitle(context, 'Support'),
              _buildSupportSection(context),
              AS.hGap16,
              _buildLogoutButton(context, ref),
              AS.hGap24,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSection(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushRoute(const ProfileUpdateRoute());
      },
      borderRadius: BorderRadius.circular(AS.radiusM),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Row(
          children: [
            SizedBox(
              width: 58,
              height: 58,
              child: CurrentUserAvatar(),
            ),
            AS.wGap16,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View Profile',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colors.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 4),
      child: Text(
        title,
        style: context.textTheme.bodyMedium?.copyWith(
          color: context.colors.onSurfaceVariant,
        ),
      ),
    );
  }

  Widget _buildAccountSection(BuildContext context) {
    return Column(
      children: [
        SettingsListTile(
          icon: Icons.person_outline,
          title: 'Personal Information',
          onTap: () {
            context.pushRoute(const ProfileUpdateRoute());
          },
        ),
        AS.hGap4,
        SettingsListTile(
          icon: Icons.notifications_outlined,
          title: 'Notifications',
          onTap: () {
            // Navigate to notifications page
          },
        ),
        AS.hGap4,
        SettingsListTile(
          icon: Icons.security_outlined,
          title: 'Privacy & Security',
          onTap: () {
            // Navigate to privacy & security page
          },
        ),
      ],
    );
  }

  Widget _buildPreferencesSection(BuildContext context) {
    return Column(
      children: [
        SettingsListTile(
          icon: Icons.palette_outlined,
          title: 'Appearance',
          onTap: () {
            // Navigate to appearance page
          },
        ),
        AS.hGap4,
        SettingsListTile(
          icon: Icons.language_outlined,
          title: 'Language',
          onTap: () {
            // Navigate to language page
          },
        ),
      ],
    );
  }

  Widget _buildSupportSection(BuildContext context) {
    return Column(
      children: [
        SettingsListTile(
          icon: Icons.help_outline,
          title: 'Help Center',
          onTap: () {
            // Navigate to help center page
          },
        ),
        AS.hGap4,
        SettingsListTile(
          icon: Icons.message_outlined,
          title: 'Contact Us',
          onTap: () {
            // Navigate to contact us page
          },
        ),
      ],
    );
  }

  Widget _buildLogoutButton(BuildContext context, WidgetRef ref) {
    return AppButton(
      onPressed: () async {
        showDialog(
          context: context,
          builder: (context) {
            return AppDialog(
              type: AppDialogType.confirmation,
              title: 'Log Out',
              message: 'Are you sure you want to log out?',
              onConfirm: () async {
                final closeLoading = BotToast.showLoading();
                await ref.read(signOutProvider.notifier).call();
                closeLoading();
                if (context.mounted) {
                  context.maybePop();
                }
              },
              confirmButtonText: 'Log Out',
              onCancel: () {
                context.maybePop();
              },
            );
          },
        );
      },
      label: 'Log Out',
      fullWidth: true,
      icon: Icons.logout,
      size: AppButtonSize.medium,
    );
  }
}
