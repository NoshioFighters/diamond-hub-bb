/// アプリケーション設定
/// dart-defineから環境変数を取得
class AppConfig {
  static const String env = String.fromEnvironment('ENV', defaultValue: 'dev');
  static const String envName =
      String.fromEnvironment('ENV_NAME', defaultValue: 'diamond-hub-bb-dev');

  static bool get isDevelopment => env == 'dev';
  static bool get isProduction => env == 'prod';

  static String get environmentName => envName;
}


