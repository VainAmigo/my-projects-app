import 'package:drible_app/apps/education_app/education_app.dart';
import 'package:flutter/material.dart';

class EdCourseCardWidget extends StatelessWidget {
  const EdCourseCardWidget({super.key, this.imageWidth, this.imageHeight});

  final double? imageWidth;
  final double? imageHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
            ),
            width: imageWidth ?? 190,
            height: imageHeight ?? 150,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Course · 3 h', style: AppTypography.grey16w400),
                    Icon(
                      Icons.favorite,
                      size: 16,
                      color: AppColors.greySecondary,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  'Make A Custom Character Illustration',
                  style: AppTypography.black16w400,
                ),
                Text(
                  'Cory Kensinger',
                  style: AppTypography.grey16w400.copyWith(
                    fontSize: 12,
                    color: AppColors.secondaryGreyText,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 16,
                      color: AppColors.greySecondary,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '6.3K',
                      style: AppTypography.grey16w400.copyWith(fontSize: 12),
                    ),
                    SizedBox(width: 12),
                    Icon(
                      Icons.chat_bubble_outline,
                      size: 16,
                      color: AppColors.greySecondary,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '1.1K',
                      style: AppTypography.grey16w400.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
