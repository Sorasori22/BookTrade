import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/widgets/lists/settings_list_tile.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PrivacySecurityPage extends StatelessWidget {
  const PrivacySecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy & Security'),
        leading: const AutoLeadingButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AS.sidePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle(context, 'Privacy'),
              SettingsListTile(
                icon: Icons.visibility_outlined,
                title: 'Profile Visibility',
                subtitle: 'Control who can see your profile',
                onTap: () {
                  // Implement profile visibility settings
                },
              ),
              AS.hGap4,
              SettingsListTile(
                icon: Icons.location_on_outlined,
                title: 'Location Services',
                subtitle: 'Manage location data usage',
                onTap: () {
                  // Implement location settings
                },
              ),
              AS.hGap16,
              _buildSectionTitle(context, 'Security'),
              SettingsListTile(
                icon: Icons.lock_outline,
                title: 'Change Password',
                subtitle: 'Update your account password',
                onTap: () {
                  // Implement password change
                },
              ),
              AS.hGap4,
              SettingsListTile(
                icon: Icons.security_outlined,
                title: 'Two-Factor Authentication',
                subtitle: 'Add an extra layer of security',
                onTap: () {
                  // Implement 2FA settings
                },
              ),
              AS.hGap4,
              SettingsListTile(
                icon: Icons.devices_outlined,
                title: 'Connected Devices',
                subtitle: 'Manage devices with access to your account',
                onTap: () {
                  // Implement device management
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
