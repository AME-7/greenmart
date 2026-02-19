import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/text_style.dart';

class DetailsPro extends StatelessWidget {
  const DetailsPro({super.key, required this.text, this.textdata});
  final String text;
  final String? textdata;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTextStyle.captoin1.copyWith(fontWeight: FontWeight.w600),
        ),

        Row(
          children: [
            Text(
              textdata!,
              style: AppTextStyle.body.copyWith(color: Colors.grey),
            ),
            Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
      ],
    );
  }
}
