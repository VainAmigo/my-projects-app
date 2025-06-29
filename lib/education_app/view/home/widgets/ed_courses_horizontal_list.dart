import 'package:drible_app/education_app/view/home/widgets/ed_course_horizontal_card_widget.dart';
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
