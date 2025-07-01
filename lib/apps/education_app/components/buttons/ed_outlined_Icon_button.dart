import 'package:flutter/material.dart';
import 'package:drible_app/apps/education_app/education_app.dart';

class EdOutlinedIconButton extends StatelessWidget {
  const EdOutlinedIconButton({
    this.onPressed,
    required this.text,
    this.fillColor,
    this.textColor,
    super.key,
    this.borderColor,
    this.icon,
  });

  final Function()? onPressed;
  final String text;
  final Widget? icon;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed ?? () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: fillColor ?? AppColors.greySurface,
        foregroundColor: textColor ?? AppColors.blackText,
        side: BorderSide(color: borderColor ?? AppColors.greySecondary, width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        minimumSize: const Size(double.infinity, 48),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          icon ?? const SizedBox.shrink(),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
