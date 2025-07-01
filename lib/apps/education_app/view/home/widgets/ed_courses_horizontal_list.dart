import 'package:drible_app/apps/education_app/education_app.dart';
import 'package:flutter/material.dart';

class EdCoursesHorizontalList extends StatelessWidget {
  const EdCoursesHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            EdCourseHorizontalCardWidget(),
            SizedBox(width: 8.0),
            EdCourseHorizontalCardWidget(),
            SizedBox(width: 8.0),
            EdCourseHorizontalCardWidget(),
            SizedBox(width: 8.0),
            EdCourseHorizontalCardWidget(),
          ],
        ),
      ),
    );
  }
}
