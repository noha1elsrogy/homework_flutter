import 'package:hive_ce_flutter/hive_ce_flutter.dart';

class HiveSetup {
  static Future<void> init() async {
    await Hive.initFlutter();

    // Register adapters here
    // Hive.registerAdapter(TaskAdapter());
  }
}
