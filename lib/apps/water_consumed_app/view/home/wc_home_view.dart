import 'package:drible_app/apps/water_consumed_app/water_consumed.dart';
import 'package:flutter/material.dart';

class WcHomeView extends StatelessWidget {
  const WcHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          WcHomeBottomWidget(height: height * 0.08),

          Container(
            width: double.infinity,
            height: height * 0.92,
            decoration: BoxDecoration(
              color: AppColors.lightSurface,
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
            ),
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('2.763 ml', style: AppTypography.black50w800),
                        Text('Water consumed', style: AppTypography.grey16w400),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      WcHomeCardWidget(
                        topIcon: Icons.calendar_month,
                        topText: 'DAILY GOAL',
                        child: WcWaterIntakeProgressWidget(totalIntake: 3321),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
