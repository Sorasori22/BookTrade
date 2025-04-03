import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:kimapp_utils/startup.dart';

import '../startup.dart';

final _devUrl = platformType.isAndroid ? "http://10.0.2.2:54321" : "http://localhost:54321";
const _devAnonKey =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0";

class InitSupabaseTask extends StartUpTask {
  const InitSupabaseTask();

  @override
  Future<void> initialize(LaunchContext context) async {
    final url = context.env.isDevelop ? _devUrl : 'https://kcklnkxnhuyyfvytyhtt.supabase.co';
    final key = context.env.isDevelop
        ? _devAnonKey
        : 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imtja2xua3huaHV5eWZ2eXR5aHR0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDIwMDc1NzEsImV4cCI6MjA1NzU4MzU3MX0.mwyzB8P4ty7ot9yRoSVQ44M_m5XS7YeujS_a7wucZZ8';

    await initializeSupabase(
      url: url,
      anonKey: key,
      debug: context.env.isDevelop,
    );
  }
}
