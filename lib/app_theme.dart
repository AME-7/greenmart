import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_fonts.dart';
import 'package:greenmart/core/styles/colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: AppFonts.poppins,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          minimumSize: const Size(double.infinity, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          foregroundColor: AppColors.backgroundColor,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.accentColor,
        filled: true,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      // focusedBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(10),
      //   borderSide: BorderSide.none,
      // ),
      // errorBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(10),
      //   borderSide: BorderSide.none,
      // ),
      // focusedErrorBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(10),
      //   borderSide: BorderSide.none,
      // ),),
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        onSurface: AppColors.blackColor,
      ),
    );
  }
}
