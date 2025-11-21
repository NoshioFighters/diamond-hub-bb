import 'package:firebase_core/firebase_core.dart';

/// 本番環境のFirebase設定
/// TODO: Firebase Consoleから実際の設定値を取得して設定してください
class FirebaseProd {
  static FirebaseOptions get options => const FirebaseOptions(
        apiKey: 'YOUR_PROD_API_KEY',
        appId: 'YOUR_PROD_APP_ID',
        messagingSenderId: 'YOUR_PROD_MESSAGING_SENDER_ID',
        projectId: 'diamond-hub-bb',
        storageBucket: 'diamond-hub-bb.appspot.com',
        // iOS
        iosBundleId: 'net.nf-bbc.diamondhubbb',
        // Web
        authDomain: 'diamond-hub-bb.firebaseapp.com',
      );
}

