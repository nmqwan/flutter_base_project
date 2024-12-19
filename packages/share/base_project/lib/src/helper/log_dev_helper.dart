import 'package:logger/logger.dart';

class Log {
  static bool logEnable = true;
  static var logger = Logger();
  static void debug(String title, dynamic log) {
    if (logEnable) logger.d(log, error: title);
  }

  static void info(String title, dynamic log) {
    if (logEnable) logger.i(log, error: title);
  }

  static void print(dynamic log) {
    if (logEnable) logger.d(log);
  }

  static void error(String title, dynamic log) {
    if (logEnable) logger.e(log, error: title);
  }
}
