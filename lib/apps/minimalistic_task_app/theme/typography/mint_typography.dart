import 'package:flutter/material.dart';
import 'package:drible_app/apps/minimalistic_task_app/minimalistic_task.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static final title50w800 = GoogleFonts.dmMono(
    textStyle: TextStyle(color: AppColors.primaryDark, fontSize: 50, fontWeight: FontWeight.w800),
  );
  static final text14w400 = GoogleFonts.roboto(
    textStyle: TextStyle(color: AppColors.darkGrey, fontSize: 14, fontWeight: FontWeight.w400),
  );
  static final text16w400 = GoogleFonts.roboto(
    textStyle: TextStyle(color: AppColors.primaryDark, fontSize: 16, fontWeight: FontWeight.w400),
  );
}