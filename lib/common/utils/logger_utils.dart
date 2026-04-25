import 'package:logging/logging.dart';

final Logger appLog = Logger('AppLogger');

void setupLogging() {
  Logger.root.level = Level.ALL; // You can change this to Level.INFO, etc.
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.loggerName}: ${record.message}');
  });
}
