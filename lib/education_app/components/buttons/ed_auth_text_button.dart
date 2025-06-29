import 'package:flutter/material.dart';
import 'package:drible_app/education_app/theme/ed_theme.dart';

class EdAuthTextButton extends StatelessWidget {
  const EdAuthTextButton({super.key, required this.firstText, required this.secondText, this.onPressed});

  final String firstText;
  final String secondText;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You already have an account?', style: AppTypography.grey16w400),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: onPressed,
            child: Text(
              'Sign In',
              style: AppTypography.grey16w400.copyWith(fontWeight: FontWeight.w700, color: AppColors.secondaryGreyText),
            ),
          ),
        ],
      ),
    );
  }
}
