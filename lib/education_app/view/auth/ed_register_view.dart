import 'package:drible_app/education_app/theme/ed_theme.dart';
import 'package:drible_app/education_app/components/ed_components.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:drible_app/router/app_router.dart';

class EdRegisterView extends StatelessWidget {
  const EdRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const Text('Sign Up', style: AppTypography.black24w600),
              const SizedBox(height: 100),
              EdTextField(labelText: 'E-mail'),
              EdTextField(labelText: 'Password', obscureText: true),
              EdTextField(labelText: 'Confirm password', obscureText: true),
              const SizedBox(height: 16),
              EdFilledButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.pushNamed(context, AppRouter.edHomeInitialView);
                },
              ),
              const SizedBox(height: 24),
              Text('or', style: AppTypography.grey16w400),
              const SizedBox(height: 24),
              EdOutlinedIconButton(
                text: 'Continue with Google',
                icon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Icon(Iconsax.instagram, color: AppColors.blackText, size: 24),
                ),
              ),
              const SizedBox(height: 8),
              EdOutlinedIconButton(
                text: 'Continue with Apple',
                icon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Icon(Iconsax.play_circle, color: AppColors.blackText, size: 24),
                ),
              ),
              const Spacer(),
              EdAuthTextButton(
                firstText: 'Already have an account?',
                secondText: 'Sign In',
                onPressed: () {
                  Navigator.pushNamed(context, AppRouter.edLoginView);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
