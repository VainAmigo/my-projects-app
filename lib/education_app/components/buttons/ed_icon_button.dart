import 'package:flutter/material.dart';
import 'package:drible_app/education_app/theme/ed_theme.dart';

class EdIconButton extends StatelessWidget {
  const EdIconButton({
    super.key,
    this.icon,
    this.filledColor,
    this.iconColor,
    this.onPressed,
  });

  final Function()? onPressed;
  final IconData? icon;
  final Color? filledColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 58,
        width: 58,
        decoration: BoxDecoration(
          color: filledColor ?? AppColors.black,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Icon(icon ?? Icons.bar_chart, color: iconColor ?? Colors.white,),
        ),
      ),
    );
  }
}
