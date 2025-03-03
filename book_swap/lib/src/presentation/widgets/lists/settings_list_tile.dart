import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:flutter/material.dart';

class SettingsListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SettingsListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
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
              child: Icon(
                icon,
                color: context.colors.onSurface,
                size: 24,
              ),
            ),
            AS.wGap12,
            Expanded(
              child: Text(
                title,
                style: context.textTheme.bodyLarge,
              ),
            ),
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
