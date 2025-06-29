import 'package:flutter/material.dart';
import 'package:drible_app/education_app/theme/ed_theme.dart';

class EdFilledButton extends StatelessWidget {
  const EdFilledButton({this.onPressed, required this.text, this.fillColor, this.textColor, super.key});

  final Function()? onPressed;
  final String text;
  final Color? fillColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed ?? () {},
      style: FilledButton.styleFrom(
        backgroundColor: fillColor ?? AppColors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        minimumSize: const Size(double.infinity, 48),
      ),
      child: Text(text, style: TextStyle(color: textColor, fontSize: 16)),
    );
  }
}
