import 'package:diet_app/app/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppStyles {
  static SystemUiOverlayStyle lightStyle = SystemUiOverlayStyle(
    statusBarColor: AppColors.background.withOpacity(0.4),
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarContrastEnforced: true,
    systemStatusBarContrastEnforced: false,
  );

  static const SystemUiOverlayStyle darkStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarContrastEnforced: true,
  );
}
