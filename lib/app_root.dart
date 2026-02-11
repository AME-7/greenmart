import 'dart:io';

import 'package:flutter/material.dart';
import 'package:greenmart/app_theme.dart';
import 'package:greenmart/features/intro/splash_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Container(),
        );
      },
      home: SplashScreen(),
    );
  }
}
