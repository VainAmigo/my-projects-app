import 'package:flutter/material.dart';
import 'package:drible_app/education_app/theme/ed_theme.dart';

class EdTextField extends StatelessWidget {
  const EdTextField({required this.labelText, this.obscureText, super.key});

  final String labelText;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppTypography.grey16w400,
          filled: true,
          fillColor: AppColors.greySurface,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(16)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.greySecondary, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
