import '../startup.dart';

class InitErrorReporterTask extends StartUpTask {
  const InitErrorReporterTask();

  @override
  Future<void> initialize(LaunchContext context) async {
    // Read from local storage if needed
    // Make sure this task is run after InitLocationStorageTask
    const isAllowSendErrorReport = true;

    // Only enable in release mode
    if (context.env.isRelease && isAllowSendErrorReport) {
      _reportErrorEnabled = true;
    }
  }
}

bool _reportErrorEnabled = false;
Future<void> reportErrorToCrashlyticsService(dynamic error, dynamic stackTrace) async {
  if (!_reportErrorEnabled) return;

  // TODO: Implement crashlytics report
}
