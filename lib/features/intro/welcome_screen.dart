import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/features/auth/home/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Image.asset(
              AppImages.welcome,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              right: 40,
              left: 40,
              bottom: 70,
              child: Column(
                children: [
                  SvgPicture.asset(
                    AppImages.carrotSvg,
                    colorFilter: ColorFilter.mode(
                      AppColors.backgroundColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Welcom\nto to our store',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.headline.copyWith(
                      color: AppColors.backgroundColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: AppTextStyle.captoin1.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  MainButton(
                    onPressed: () {
                      pushReplacment(context, LoginScreen());
                    },
                    text: 'Get Started',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
