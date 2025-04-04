import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/presentation/app/app_theme_provider.dart';
import 'package:book_swap/src/presentation/modules/profile/font/change_text_size_dialog.dart';
import 'package:dartx/dartx.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/app_style.dart';
import '../../widgets/lists/settings_list_tile.dart';

@RoutePage()
class AppearancePage extends ConsumerWidget {
  const AppearancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appearance.title'.tr()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AS.sidePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer(
                builder: (context, ref, child) {
                  final isDarkMode = ref.watch(appThemeModeProvider).requireValue == ThemeMode.dark;
                  return SettingsListTile(
                    icon: Icons.dark_mode_outlined,
                    title: 'appearance.menu.dark_mode'.tr(),
                    trailing: Switch(
                      value: isDarkMode,
                      onChanged: (value) {
                        ref
                            .read(appThemeModeProvider.notifier)
                            .change(value ? ThemeMode.dark : ThemeMode.light);
                      },
                    ),
                  );
                },
              ),
              AS.hGap8,
              Consumer(
                builder: (context, ref, child) {
                  final textScale = ref.watch(textScaleProvider).requireValue;
                  return SettingsListTile(
                    icon: Icons.font_download_outlined,
                    title: 'appearance.menu.font_size.title'.tr(),
                    subtitle: textScale.name.capitalize(),
                    onTap: () {
                      ChangeTextSizeDialog.show(context);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
