import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/functions/validations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widget/custom_text_form_field.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/features/auth/page/otp_screen.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text('Enter your mobile number', style: AppTextStyle.title),
                  SizedBox(height: 16),

                  Text(
                    'We need to verify you. We will send you a one time verification code.',
                    style: AppTextStyle.captoin1.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 40),
                  CustomTextFormField(
                    keybordType: TextInputType.phone,
                    hintText: '01xxxxxxxxx',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your number';
                      } else if (!isEgyptionPhone(value)) {
                        return 'Please enter valid number';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 40),
                  MainButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        pushTo(context, OtpScreen());
                      }
                    },
                    text: 'Next',
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
