import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

class Config {
  const Config._();

  static const appName = "Book swap";

  static final riverpodObserverSetting = TalkerRiverpodLoggerSettings(
    printStateFullData: true,
    printProviderFailed: true,
    printFailFullData: true,
    printProviderAdded: true,
    printProviderDisposed: true,
    printProviderUpdated: true,
  );

  static const int minSplashDurationInMs = 1200;
}
