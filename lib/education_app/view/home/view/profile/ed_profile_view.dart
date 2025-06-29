import 'package:flutter/material.dart';
import 'package:drible_app/education_app/theme/ed_theme.dart';
import 'package:drible_app/education_app/view/home/ed_home.dart';

class EdProfileView extends StatelessWidget {
  const EdProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox.expand(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      // image: DecorationImage(
                      //   image: AssetImage('assets/images/profile_picture.png'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Annette Simmons',
                    style: AppTypography.black18w500With(
                      fontSize: 18,
                      color: AppColors.whiteText,
                    ),
                  ),
                  Text(
                    'annette@gmail.com',
                    style: AppTypography.grey16w400With(
                      fontSize: 16,
                      color: AppColors.secondaryGreyText,
                    ),
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: AppColors.greySurface,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _MyCoursesHorizontalScrollWidget(),
                      const SizedBox(height: 16),
                      _MyBookHorizontalScrollWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyCoursesHorizontalScrollWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
                'My Courses',
                style: AppTypography.black18w500
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                  'View All',
                  style: AppTypography.grey16w400
              ),
            ),
          ],
        ),
        SizedBox(
          child: EdCoursesHorizontalList(),
        ),
      ],
    );
  }
}

class _MyBookHorizontalScrollWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'My Books',
              style: AppTypography.black18w500
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                'View All',
                style: AppTypography.grey16w400
              ),
            ),
          ],
        ),
        SizedBox(
          child: EdBooksHorizontalList(),
        ),
      ],
    );
  }
}

