import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/gen/fonts.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData appTheme = ThemeData(
    fontFamily: FontFamily.montserrat,
    primaryColor: AppColors.primary,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      secondary: AppColors.accent,
      onSecondary: AppColors.onAccent,
      error: AppColors.error,
      onError: AppColors.onError,
      background: AppColors.background,
      onBackground: AppColors.onBackground,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface,
    ),
    appBarTheme: const AppBarTheme(color: AppColors.background),
    cupertinoOverrideTheme: const CupertinoThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: AppColors.background,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.accent,
      selectionColor: AppColors.accent,
      selectionHandleColor: AppColors.accent,
    ),
    indicatorColor: AppColors.accent,
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.inputHint, fontSize: 18, fontWeight: FontWeight.w400,),
    ),
  );
}