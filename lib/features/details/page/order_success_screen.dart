import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/widget/main_button.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/done.svg'),
            const SizedBox(height: 30),
            const Text(
              "Your Order has been accepted",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Your items has been placed and is on it’s way to being processed",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            MainButton(text: "Track Order", onPressed: () {}),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Back to home"),
            ),
          ],
        ),
      ),
    );
  }
}
