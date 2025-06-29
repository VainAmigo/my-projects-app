import 'package:drible_app/education_app/components/ed_components.dart';
import 'package:drible_app/education_app/education_app.dart';
import 'package:flutter/material.dart';

class EdHomeView extends StatelessWidget {
  const EdHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: EdCustomTabBar(
          tabs: const ['New', 'Discover'],
          children: [_NewContentView(), _DiscoverContentView()],
        ),
      ),
    );
  }
}

class _NewContentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        key: const ValueKey('New'),
        children: [
          const EdCourseCardWidget(),
          const EdBooksHorizontalList(),
          const EdCourseCardWidget(imageHeight: 120, imageWidth: 120),
          const EdCourseCardWidget(imageHeight: 120, imageWidth: 120),
          const EdCourseCardWidget(),
        ],
      ),
    );
  }
}

class _DiscoverContentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      key: const ValueKey('discover'),
      padding: const EdgeInsets.all(24),
      children: const [
        Text("🔍 Discover Content Here", style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
