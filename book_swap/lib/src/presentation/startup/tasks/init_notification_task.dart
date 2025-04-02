import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp_utils/startup.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../startup.dart';

const _kAppId = '5af88570-fba6-451a-a570-ea2d50348cef';

class InitNotificationTask extends StartUpTask {
  const InitNotificationTask();

  @override
  Future<void> initialize(LaunchContext context) async {
    if (!platformType.isAndroid) return;
    await OneSignal.Debug.setLogLevel(OSLogLevel.debug);
    OneSignal.initialize(_kAppId);
    await OneSignal.Notifications.requestPermission(true);
  }
}

/// Handle click event from notification, This should be call in root of app after router initialization
void notificationClickEventHandler(
  WidgetRef ref,
  void Function(OSNotificationClickEvent even) onClick,
) {
  // Only handle for android
  if (!platformType.isAndroid) return;

  OneSignal.Notifications.addClickListener(onClick);
}
