import 'package:book_swap/src/core/sembast/sembast_db.dart';

import '../startup.dart';

class InitLocalDbTask extends StartUpTask {
  const InitLocalDbTask();

  @override
  Future<void> initialize(LaunchContext context) async {
    await context.container.read(sembastDbProvider.future);
  }
}
