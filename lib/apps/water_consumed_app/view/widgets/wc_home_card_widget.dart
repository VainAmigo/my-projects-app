import 'package:flutter/material.dart';
import 'package:drible_app/apps/water_consumed_app/water_consumed.dart';

class WcHomeCardWidget extends StatelessWidget {
  const WcHomeCardWidget({super.key, required this.topText, required this.topIcon, required this.child});

  final String topText;
  final IconData topIcon;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.greySurface,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                topIcon,
                color: AppColors.greyText,
              ),
              const SizedBox(width: 8.0),
              Text(
                topText,
                style: AppTypography.grey16w400,
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          child,
        ],
      ),
    );
  }
}
