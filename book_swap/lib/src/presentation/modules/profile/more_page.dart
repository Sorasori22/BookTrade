import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/account/current_account_provider.widget.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/features/notification/providers/notification_unread_count_provider.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/current_user_avatar.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/dialogs/app_dialog.dart';
import 'package:book_swap/src/presentation/widgets/lists/settings_list_tile.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../features/auth/auth.dart';

@RoutePage()
class MorePage extends ConsumerWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('more.title'.tr()),
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
              _buildSectionTitle(context, 'more.sections.account'.tr()),
              _buildAccountSection(context),
              AS.hGap16,
              _buildSectionTitle(context, 'more.sections.preferences'.tr()),
              _buildPreferencesSection(context),
              AS.hGap16,
              _buildSectionTitle(context, 'more.sections.support'.tr()),
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
                CurrentAccountSelectWidget(
                  selector: (state) => state.profile?.fullname ?? "...",
                  builder: (context, ref, value) {
                    return Text(
                      value,
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
                Text(
                  'profile.view_profile'.tr(),
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
          title: 'more.menu.personal_info'.tr(),
          onTap: () {
            context.pushRoute(const ProfileUpdateRoute());
          },
        ),
        AS.hGap4,
        Consumer(
          builder: (context, ref, child) {
            final unreadCount = ref.watch(notificationUnreadCountProvider).valueOrNull ?? 0;
            return SettingsListTile(
              icon: Icons.notifications_outlined,
              title: 'more.menu.notifications'.tr(),
              unreadCount: unreadCount,
              onTap: () {
                context.pushRoute(const NotificationRoute());
              },
            );
          },
        ),
        AS.hGap4,
        SettingsListTile(
          icon: Icons.security_outlined,
          title: 'more.menu.privacy_security'.tr(),
          onTap: () {
            context.pushRoute(const PrivacySecurityRoute());
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
          title: 'more.menu.appearance'.tr(),
          onTap: () {
            context.pushRoute(const AppearanceRoute());
          },
        ),
        AS.hGap4,
        SettingsListTile(
          icon: Icons.language_outlined,
          title: 'more.menu.language'.tr(),
          onTap: () {
            context.pushRoute(const LanguageRoute());
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
          title: 'more.menu.help_center'.tr(),
          onTap: () {
            context.pushRoute(const HelpCenterRoute());
          },
        ),
        AS.hGap4,
        SettingsListTile(
          icon: Icons.message_outlined,
          title: 'more.menu.contact_us'.tr(),
          onTap: () {
            context.pushRoute(const ContactUsRoute());
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
              title: 'more.logout.title'.tr(),
              message: 'more.logout.message'.tr(),
              onConfirm: () async {
                final closeLoading = BotToast.showLoading();
                await ref.read(signOutProvider.notifier).call();
                closeLoading();
                if (context.mounted) {
                  context.maybePop();
                }
              },
              confirmButtonText: 'more.logout.button'.tr(),
              onCancel: () {
                context.maybePop();
              },
            );
          },
        );
      },
      label: 'more.logout.button'.tr(),
      fullWidth: true,
      icon: Icons.logout,
      size: AppButtonSize.medium,
    );
  }
}
