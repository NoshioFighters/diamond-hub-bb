import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';

import 'core/config/firebase_config.dart';
import 'core/di/injection_container.dart';
import 'presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase初期化
  await Firebase.initializeApp(
    options: FirebaseConfig.getFirebaseOptions(),
  );

  // 依存性注入の初期化
  await configureDependencies();

  runApp(
    const ProviderScope(
      child: DiamondHubApp(),
    ),
  );
}

