import 'package:drible_app/education_app/theme/ed_theme.dart';
import 'package:drible_app/education_app/components/ed_components.dart';
import 'package:drible_app/education_app/education_app.dart';
import 'package:flutter/material.dart';

class EdFavoriteView extends StatelessWidget {
  const EdFavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = const ['Courses', 'Books', 'Podcasts', 'Videos'];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Saved', style: AppTypography.black24w600),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Expanded(
          child: EdCustomTabBar(
            tabs: tabs,
            children: [
              _CoursesContent(),
              _BooksContent(),
              _PodcastsContent(),
              _VideosContent(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CoursesContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) => const EdCourseCardWidget(),
    );
  }
}

class _BooksContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 3 / 4,
      ),
      itemBuilder: (context, index) {
        return const EdBookCardWidget(color: Colors.blueAccent);
      },
    );
  }
}

class _PodcastsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) => const EdCourseCardWidget(),
    );
  }
}

class _VideosContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) => const EdCourseCardWidget(),
    );
  }
}
