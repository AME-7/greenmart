import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/text_style.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({super.key, this.hintText});
  final String? hintText;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppTextStyle.caption2,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: obscureText
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.remove_red_eye),
        ),
      ),
      validator: (input) {
        if (input!.isEmpty) {
          return 'Please enter some text';
        } else if (input.length < 6) {
          return 'password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}
