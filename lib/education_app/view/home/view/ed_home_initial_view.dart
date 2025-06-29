import 'package:drible_app/education_app/education_app.dart';
import 'package:flutter/material.dart';
import 'package:drible_app/education_app/components/ed_components.dart';

class EdHomeInitialViewView extends StatefulWidget {
  const EdHomeInitialViewView({super.key});

  @override
  State<EdHomeInitialViewView> createState() => _EdHomeInitialViewView();
}

class _EdHomeInitialViewView extends State<EdHomeInitialViewView> {
  int currentIndex = 0;

  final List<Widget> _screens = [
    const EdHomeView(),
    const EdSearchView(),
    const EdFavoriteView(),
    const EdProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(child: _screens[currentIndex]),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: EdCustomBottomNavBar(
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() => currentIndex = index);
              },
            ),
          ),
        ],
      ),
    );
  }
}

