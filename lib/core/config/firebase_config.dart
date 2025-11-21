import 'package:firebase_core/firebase_core.dart';
import 'app_config.dart';
import 'firebase_dev.dart';
import 'firebase_prod.dart';

/// Firebase設定を環境に応じて取得
class FirebaseConfig {
  static FirebaseOptions getFirebaseOptions() {
    if (AppConfig.isDevelopment) {
      return FirebaseDev.options;
    } else {
      return FirebaseProd.options;
    }
  }
}


