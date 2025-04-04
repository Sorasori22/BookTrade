import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/app_style.dart';

@RoutePage()
class LanguagePage extends ConsumerWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'),
      ),
      body: Padding(
        padding: EdgeInsets.all(AS.sidePadding).copyWith(top: 4),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _LanguageButton(
                languageCode: 'en',
                languageName: 'English',
                onPressed: () {
                  context.setLocale(Locale('en'));
                },
              ),
              AS.hGap16,
              _LanguageButton(
                languageCode: 'km',
                languageName: 'ភាសាខ្មែរ',
                onPressed: () {
                  context.setLocale(Locale('km'));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LanguageButton extends StatelessWidget {
  final String languageCode;
  final String languageName;
  final VoidCallback onPressed;

  const _LanguageButton({
    required this.languageCode,
    required this.languageName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = context.locale.languageCode == languageCode;

    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? context.theme.primaryColor : Colors.black12,
          width: 2,
        ),
        color: isSelected ? context.theme.primaryColor.withOpacity(0.1) : null,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              _getFlagEmoji(languageCode),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  languageName,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: isSelected ? context.theme.primaryColor : null,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
              if (isSelected)
                const Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getFlagEmoji(String languageCode) {
    String flagEmoji;
    switch (languageCode) {
      case 'en':
        flagEmoji = '🇺🇸';
        break;
      case 'km':
        flagEmoji = '🇰🇭';
        break;
      default:
        flagEmoji = '🏳️';
    }
    return Text(
      flagEmoji,
      style: const TextStyle(fontSize: 24),
    );
  }
}
