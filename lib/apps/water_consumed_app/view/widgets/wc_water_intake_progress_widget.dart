import 'package:flutter/material.dart';
import 'package:drible_app/apps/water_consumed_app/water_consumed.dart';

class WcWaterIntakeProgressWidget extends StatelessWidget {
  final double totalIntake;
  final double baseGoal;

  const WcWaterIntakeProgressWidget({
    super.key,
    required this.totalIntake,
    this.baseGoal = 2763,
  });

  @override
  Widget build(BuildContext context) {
    final bool isAboveGoal = totalIntake >= baseGoal;
    final double difference = (totalIntake - baseGoal).abs();
    final double progress = (totalIntake / baseGoal).clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${totalIntake.toInt()} ml",
          style: AppTypography.black40w800,
        ),
        Text(
          isAboveGoal
              ? "${((totalIntake - baseGoal) / baseGoal * 100).toStringAsFixed(0)}% higher than your base goal."
              : "${((baseGoal - totalIntake) / baseGoal * 100).toStringAsFixed(0)}% lower than your base goal.",
          style: TextStyle(
            color: isAboveGoal ? Colors.green : Colors.red,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 12),
        Stack(
          children: [
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            FractionallySizedBox(
              widthFactor: progress,
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            if (isAboveGoal)
              FractionallySizedBox(
                widthFactor: (difference / baseGoal).clamp(0.0, 1.0),
                alignment: Alignment.centerRight,
                child: Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildLegendDot("Base goal", baseGoal.toInt(), Colors.black),
            _buildLegendDot(
              isAboveGoal ? "Exercise" : "Deficit",
              difference.toInt(),
              isAboveGoal ? Colors.green : Colors.red,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLegendDot(String label, int value, Color color) {
    return Row(
      children: [
        Icon(Icons.circle, size: 10, color: color),
        const SizedBox(width: 6),
        Text(
          "$label",
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(width: 4),
        Text(
          "$value ml",
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
