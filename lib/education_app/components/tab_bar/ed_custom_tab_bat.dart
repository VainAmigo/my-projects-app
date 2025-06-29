import 'package:flutter/material.dart';
import 'package:drible_app/education_app/theme/ed_theme.dart';

class EdCustomTabBar extends StatefulWidget {
  final List<String> tabs;
  final List<Widget> children;

  const EdCustomTabBar({
    super.key,
    required this.tabs,
    required this.children,
  }) : assert(tabs.length == children.length, "Tabs and children must match");

  @override
  State<EdCustomTabBar> createState() => _EdCustomTabBarState();
}

class _EdCustomTabBarState extends State<EdCustomTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.tabs.length, (index) {
                final isSelected = index == selectedIndex;
                return GestureDetector(
                  onTap: () => setState(() => selectedIndex = index),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          widget.tabs[index],
                          style: isSelected ? AppTypography.black24w300 : AppTypography.grey24w300,
                        ),
                        const SizedBox(height: 6),

                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isSelected ? AppColors.black : Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
        Expanded(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: widget.children[selectedIndex],
          ),
        ),
      ],
    );
  }
}