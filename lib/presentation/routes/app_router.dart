import 'package:go_router/go_router.dart';

import '../../core/config/app_config.dart';
import '../pages/home/home_page.dart';
import '../pages/splash/splash_page.dart';

/// アプリケーションルーティング設定
class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    debugLogDiagnostics: AppConfig.isDevelopment,
    routes: [
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}

