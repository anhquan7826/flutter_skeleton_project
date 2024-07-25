import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_skeleton_project/resources/resources.dart';
import 'package:flutter_skeleton_project/ui/route/route.dart';
import 'package:flutter_skeleton_project/ui/theme/app_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: R.strings.app_name.tr(),
      routerConfig: AppRoute.configurations,
      theme: AppTheme().lightThemeData,
      darkTheme: AppTheme().darkThemeData,
    );
  }
}
