import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/modules/auth/email_update_dialog.dart';
import 'package:book_swap/src/presentation/modules/auth/password_update_dialog.dart';
import 'package:book_swap/src/presentation/widgets/lists/settings_list_tile.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PrivacySecurityPage extends StatelessWidget {
  const PrivacySecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('privacy_security.title'.tr()),
        leading: const AutoLeadingButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AS.sidePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle(context, 'privacy_security.sections.security'.tr()),
              SettingsListTile(
                icon: Icons.email_outlined,
                title: 'privacy_security.menu.change_email.title'.tr(),
                subtitle: 'privacy_security.menu.change_email.subtitle'.tr(),
                onTap: () {
                  EmailUpdateDialog.show(context);
                },
              ),
              AS.hGap8,
              SettingsListTile(
                icon: Icons.lock_outline,
                title: 'privacy_security.menu.change_password.title'.tr(),
                subtitle: 'privacy_security.menu.change_password.subtitle'.tr(),
                onTap: () {
                  PasswordUpdateDialog.show(context);
                },
              ),
            ],
          ),
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
}
