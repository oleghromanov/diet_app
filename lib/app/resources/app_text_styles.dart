import 'package:diet_app/app/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle button = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.onAccent,
  );

  static const TextStyle header = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.onBackground,
  );

  static const TextStyle description = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.onBackground,
  );

  static const TextStyle error = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.error,
  );

  static const TextStyle text = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.onBackground,
  );

}
