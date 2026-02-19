import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/colors.dart';

abstract class AppTextStyle {
  static const TextStyle headline = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
  static const TextStyle title = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static const TextStyle subtitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static const TextStyle body = TextStyle(
    fontSize: 16,

    color: AppColors.blackColor,
  );
  static const TextStyle captoin1 = TextStyle(
    fontSize: 14,
    color: AppColors.blackColor,
  );
  static const TextStyle caption2 = TextStyle(
    fontSize: 12,
    color: AppColors.blackColor,
  );

  static const TextStyle productTitle = captoin1;
  static const TextStyle productWeight = captoin1;
  static const TextStyle productPrice = body;
}
