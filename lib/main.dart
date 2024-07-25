import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_skeleton_project/data/data_source/local/database/database.dart';
import 'package:flutter_skeleton_project/di/app_dependency.dart';
import 'package:flutter_skeleton_project/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppDatabase.initiate();
  AppDependency().initiate();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('vi', 'VN'),
        Locale('en', 'US'),
      ],
      fallbackLocale: const Locale('en', 'US'),
      path: 'assets/translations',
      child: const MainApp(),
    ),
  );
}
