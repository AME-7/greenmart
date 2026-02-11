import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/functions/validations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widget/custom_text_form_field.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/core/widget/password_text_form_field.dart';
import 'package:greenmart/features/auth/home/phone_number_screen.dart';
import 'package:greenmart/features/auth/home/sing_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: (SvgPicture.asset(AppImages.carrotSvg))),
                  SizedBox(height: 40),
                  Text('Login', style: AppTextStyle.title),
                  SizedBox(height: 16),

                  Text(
                    'Enter your email and password',
                    style: AppTextStyle.captoin1.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 38),
                  Text(
                    'Email',
                    style: AppTextStyle.captoin1.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 7),
                  CustomTextFormField(
                    keybordType: TextInputType.emailAddress,
                    hintText: 'xxxxxxx@gmail.com',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      } else if (!isEmailValid(value)) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Password',
                    style: AppTextStyle.captoin1.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 7),
                  PasswordTextFormField(hintText: 'Enter your password'),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password ? ',
                        style: AppTextStyle.captoin1.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  MainButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        pushReplacment(context, PhoneNumberScreen());
                      }
                    },
                    text: 'login',
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        style: AppTextStyle.captoin1.copyWith(
                          color: AppColors.greyColor,
                        ),

                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: TextButton(
                              onPressed: () {
                                pushTo(context, SingScreen());
                              },

                              child: Text(
                                'Sing Up',
                                style: AppTextStyle.captoin1.copyWith(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
