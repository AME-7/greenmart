import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    this.icon,
  });

  final String text;
  final Function()? onPressed;
  final Color? color;
  final Color? textColor;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final themeStyle = Theme.of(context).elevatedButtonTheme.style;

    return ElevatedButton(
      style: themeStyle?.copyWith(
        backgroundColor: color != null ? MaterialStatePropertyAll(color) : null,
      ),
      onPressed: onPressed,
      child: icon == null
          ? Text(
              text,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon!,
                const SizedBox(width: 10),
                Text(
                  text,
                  style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
    );
  }
}
