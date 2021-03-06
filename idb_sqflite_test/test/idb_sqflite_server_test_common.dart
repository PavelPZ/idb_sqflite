import 'package:idb_sqflite/src/sqflite_factory.dart';
import 'package:sqflite/sqlite_api.dart' as sqflite;

import '../test_common/idb_shim/idb_test_common.dart';

export '../test_common/idb_shim/idb_test_common.dart';

class TestContextSqfliteServer extends TestContext {
  final sqflite.DatabaseFactory sqfliteDatabaseFactory;

  TestContextSqfliteServer(this.sqfliteDatabaseFactory) {
    factory = IdbFactorySqflite(sqfliteDatabaseFactory);
  }

  @override
  bool get isInMemory => false;
}
