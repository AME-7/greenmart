import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/features/auth/home/login_screen.dart';
import 'package:pinput/pinput.dart';
import 'dart:async';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String otpCode = '';
  int secondsRemaind = 60;
  bool showResend = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    showResend = false;
    secondsRemaind = 60;
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaind == 0) {
        timer.cancel();
        setState(() {
          showResend = true;
        });
      } else {
        setState(() {
          secondsRemaind--;
        });
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text('Enter verification code ', style: AppTextStyle.title),
                SizedBox(height: 16),

                Text(
                  'We have send SMS to : 01xxxxxxxxx',
                  style: AppTextStyle.captoin1.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Pinput(
                    length: 5,
                    mainAxisAlignment: MainAxisAlignment.center,
                    onChanged: (value) {
                      setState(() {
                        otpCode = value;
                      });
                    },
                    onCompleted: (pin) {
                      debugPrint('OTP Completed $pin');
                    },
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: Text('Change Phone Number'),
                ),
                const SizedBox(height: 20),
                MainButton(
                  text: 'Confirm',
                  onPressed: () {
                    if (otpCode.length == 5) {
                      pushReplacment(context, LoginScreen());
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Enter 5 digit code')),
                      );
                    }
                  },
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: showResend
                      ? TextButton(
                          onPressed: () {
                            startTimer();
                          },
                          child: Text(
                            'Resnd OTP',
                            style: AppTextStyle.captoin1.copyWith(
                              color: AppColors.tangoColor,
                            ),
                          ),
                        )
                      : Text(
                          'Resend confirmation code (0:${secondsRemaind.toString().padLeft(2, '0')})',
                          style: AppTextStyle.caption2.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
