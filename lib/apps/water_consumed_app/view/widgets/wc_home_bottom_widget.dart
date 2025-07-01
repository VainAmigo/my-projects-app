import 'package:flutter/material.dart';
import 'package:drible_app/apps/water_consumed_app/water_consumed.dart';

class WcHomeBottomWidget extends StatelessWidget {
  const WcHomeBottomWidget({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        height: height,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                WcIconButton(icon: Icons.calendar_month, text: 'Today'),
                const SizedBox(width: 5),
                WcIconButton(icon: Icons.person),
                const SizedBox(width: 5),
                WcIconButton(icon: Icons.menu_book),
              ],
            ),
            WcIconButton(icon: Icons.add, fillColor: AppColors.white, iconColor: AppColors.black, padding: 30),
          ],
        ),
      ),
    );
  }
}
