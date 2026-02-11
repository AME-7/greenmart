import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.keybordType,
    this.validator,
  });
  final String? hintText;
  final TextInputType? keybordType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keybordType,
      textInputAction: TextInputAction.next,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(hintText: hintText),
      validator: validator,
    );
  }
}
