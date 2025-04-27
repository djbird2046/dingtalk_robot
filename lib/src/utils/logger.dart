import 'dart:io';
import 'package:logging/logging.dart';

import '../client.dart';

enum LogModule { http, dingtalk }

DingtalkRobotLogger logger = DingtalkRobotLogger(level: Client.config.logLevel);

class DingtalkRobotLogger {
  static final DingtalkRobotLogger _singleton = DingtalkRobotLogger._internal();
  static Level _level = Level.INFO;

  factory DingtalkRobotLogger({Level level = Level.INFO}) {
    _level = level;
    return _singleton;
  }

  Logger? _logger;
  late File _logFile;

  DingtalkRobotLogger._internal() {
    _logger = Logger('DingtalkRobotLogger');
    Logger.root.level = _level;
    _logFile = File('${Directory.current.path}${Platform.pathSeparator}log${Platform.pathSeparator}dingtalkRobot.log');
    _logFile.createSync(recursive: true);

    Logger.root.onRecord.listen((record) {
      final message = '${record.level.name}: ${record.time}: PID $pid: ${record.message}';
      print(message);
      _logFile.writeAsStringSync('$message\n', mode: FileMode.append);
    });
  }

  void log(LogModule module, String message, {String detail = "{}", Level level = Level.INFO}) {
    _logger?.log(level, "[${module.name.toUpperCase()}] $message - $detail");
  }
}
