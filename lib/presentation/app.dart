import 'package:flutter/material.dart';

import '../core/config/app_config.dart';
import 'routes/app_router.dart';
import 'theme/app_theme.dart';

class DiamondHubApp extends StatelessWidget {
  const DiamondHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Diamond Hub BB',
      debugShowCheckedModeBanner: AppConfig.isDevelopment,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
    );
  }
}

