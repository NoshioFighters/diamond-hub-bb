import 'package:logger/logger.dart';
import '../config/app_config.dart';

/// アプリケーションロガー
final appLogger = Logger(
  printer: PrettyPrinter(
    methodCount: 2,
    errorMethodCount: 8,
    lineLength: 120,
    colors: true,
    printEmojis: true,
    printTime: true,
  ),
  level: AppConfig.isDevelopment ? Level.debug : Level.warning,
);


