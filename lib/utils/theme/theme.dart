import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: GoogleFonts.outfit().fontFamily,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xff6f42c1),
      primary: const Color(0xff6f42c1)
    ),
    primaryColor: const Color(0xff6f42c1),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        enableFeedback: false,
        shadowColor: Colors.transparent,
        backgroundColor: const Color(
          0xFF6f42c1,
        ),
        foregroundColor: const Color(
          0xffF2F2F2,
        ),
        disabledForegroundColor: Colors.white,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle().copyWith(
        color: const Color(0xffB7B8BA),
        fontSize: 14.sp,
      ),
      errorStyle: const TextStyle().copyWith(
        fontSize: 12.sp,
      ),
      contentPadding: EdgeInsets.all(8.h),
      fillColor: const Color(
        0xffF1F1F1,
      ),
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide.none,
      ),
    ),
    datePickerTheme: DatePickerThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.h),
      ),
      backgroundColor: Colors.white,
      headerBackgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.white,
    useMaterial3: true,
  );
}
