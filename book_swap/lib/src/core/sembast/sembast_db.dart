import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast_io.dart';

part 'sembast_db.g.dart';

@Riverpod(keepAlive: true)
FutureOr<Database> sembastDb(Ref ref) async {
  final dir = await getApplicationDocumentsDirectory();
  final dbPath = join(dir.path, 'cache.db');
  return await databaseFactoryIo.openDatabase(dbPath);
}
