import 'package:firebase_core/firebase_core.dart';

/// 開発環境のFirebase設定
/// TODO: Firebase Consoleから実際の設定値を取得して設定してください
class FirebaseDev {
  static FirebaseOptions get options => const FirebaseOptions(
        apiKey: 'YOUR_DEV_API_KEY',
        appId: 'YOUR_DEV_APP_ID',
        messagingSenderId: 'YOUR_DEV_MESSAGING_SENDER_ID',
        projectId: 'diamond-hub-bb-dev',
        storageBucket: 'diamond-hub-bb-dev.appspot.com',
        // iOS
        iosBundleId: 'net.nf-bbc.diamondhubbb.dev',
        // Web
        authDomain: 'diamond-hub-bb-dev.firebaseapp.com',
      );
}

