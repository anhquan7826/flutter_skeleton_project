import 'package:flutter/material.dart';
import 'package:flutter_skeleton_project/base/app_theme.base.dart';

class AppTheme extends BaseAppTheme {
  factory AppTheme() => _instance;

  AppTheme._();

  static final AppTheme _instance = AppTheme._();

  @override
  ThemeBundle<ColorScheme> colorSchemes() {
    return (
      light: const ColorScheme.light(),
      dark: const ColorScheme.dark(),
    );
  }
}
