import 'package:flutter/material.dart';
import 'package:drible_app/apps/water_consumed_app/water_consumed.dart';

class WcIconButton extends StatelessWidget {
  const WcIconButton({
    super.key,
    this.onTap,
    this.fillColor,
    this.iconColor,
    this.text,
    required this.icon,
    this.padding,
  });

  final Function()? onTap;
  final Color? fillColor;
  final Color? iconColor;
  final IconData icon;
  final String? text;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding:
            padding != null ? EdgeInsets.symmetric(horizontal: padding!, vertical: 10.0) : const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: fillColor ?? AppColors.secondaryBlack,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: iconColor ?? AppColors.white, size: 24),
            if (text != null) ...[
              const SizedBox(width: 10),
              Text(
                text!,
                style: TextStyle(color: iconColor ?? Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
