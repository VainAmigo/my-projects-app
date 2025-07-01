import 'package:flutter/material.dart';
import 'package:drible_app/apps/education_app/education_app.dart';

class EdCourseHorizontalCardWidget extends StatelessWidget {
  const EdCourseHorizontalCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        'Anatomy for Figure Drawing',
        style: AppTypography.black18w500With(
          fontSize: 18,
          color: AppColors.whiteText,
        ),
      ),
    );
  }
}
