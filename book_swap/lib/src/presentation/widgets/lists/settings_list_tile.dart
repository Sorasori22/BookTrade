import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:flutter/material.dart';

class SettingsListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;
  final int unreadCount;
  final Widget? trailing;

  const SettingsListTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
    this.unreadCount = 0,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final icon2 = Icon(
      icon,
      color: context.colors.onSurface,
      size: 24,
    );

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
        decoration: BoxDecoration(
          color: context.bookTheme.dividerColor.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(AS.radiusS),
        ),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              alignment: Alignment.center,
              child: Badge.count(
                isLabelVisible: unreadCount > 0,
                count: unreadCount,
                child: icon2,
              ),
            ),
            AS.wGap12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.textTheme.bodyLarge,
                  ),
                  if (subtitle != null) Text(subtitle!),
                ],
              ),
            ),
            if (trailing != null)
              trailing!
            else
              Icon(
                Icons.chevron_right,
                color: context.colors.onSurfaceVariant,
                size: 24,
              ),
          ],
        ),
      ),
    );
  }
}
