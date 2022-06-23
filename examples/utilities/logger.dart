import 'package:logger/logger.dart';

/// [Logger] - A custom logger method with various levels
///
/// It consists of
/// - Debug Log
/// - Error Log
/// - Warning Log
/// - Info Log
Logger _logger(Level logLevel) {
  final logger = Logger(
    level: logLevel,
    filter: null,
    printer: PrettyPrinter(),
    output: null,
  );
  return logger;
}

void debugLog(dynamic message) {
  _logger(Level.debug).d(message);
}

void errorLog(dynamic message) {
  _logger(Level.error).e(message);
}

void warningLog(dynamic message) {
  _logger(Level.warning).w(message);
}

void infoLog(dynamic message) {
  _logger(Level.info).w(message);
}
