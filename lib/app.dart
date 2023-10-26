import 'package:flutter/material.dart';
import 'package:uts_2020130036/services/app_routes.dart';
import 'package:uts_2020130036/services/l10n/app_localizations.dart';
import 'package:uts_2020130036/services/theme/app_theme.dart';

class NekoShop extends StatelessWidget {
  const NekoShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      theme: AppThemeData.lightThemeData,
      routes: AppRoutes.routes,
    );
  }
}
