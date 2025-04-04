import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../startup.dart';

class InitLocalizationTask extends StartUpTask {
  const InitLocalizationTask();

  @override
  Future<void> initialize(LaunchContext context) async {
    // To support Khmer language
    await initializeDateFormatting('km');
    await initializeDateFormatting('en');

    await EasyLocalization.ensureInitialized();

    if (kDebugMode) {
      // Log available translations in debug mode
      final assetLoader = RootBundleAssetLoader();
      try {
        final enTranslations =
            await assetLoader.load('assets/translations/en.json', const Locale('en'));
        final kmTranslations =
            await assetLoader.load('assets/translations/km.json', const Locale('km'));
        context.talker.debug('Loaded EN translations: $enTranslations');
        context.talker.debug('Loaded KM translations: $kmTranslations');
      } catch (e, s) {
        context.talker.error('Error loading translations', e, s);
      }
    }
  }
}
