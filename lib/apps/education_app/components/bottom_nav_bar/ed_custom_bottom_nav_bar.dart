import 'package:flutter/material.dart';
import 'package:drible_app/apps/education_app/education_app.dart';
import 'package:iconsax/iconsax.dart';

class EdCustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const EdCustomBottomNavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 32, left: 16, right: 16),
        child: Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
            boxShadow: [BoxShadow(color: AppColors.black, blurRadius: 16, offset: const Offset(0, 4))],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _NavItem(icon: Iconsax.home, isActive: currentIndex == 0, onTap: () => onTap(0)),
              _NavItem(icon: Icons.search, isActive: currentIndex == 1, onTap: () => onTap(1)),
              _NavItem(icon: Icons.favorite_border, isActive: currentIndex == 2, onTap: () => onTap(2)),
              _NavItem(icon: Icons.person_outline, isActive: currentIndex == 3, onTap: () => onTap(3)),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;

  const _NavItem({required this.icon, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon, size: 32,
        color: isActive ? AppColors.black : AppColors.greySecondary,
      ),
    );
  }
}
