import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/styles.dart';
import 'colors.dart';

ThemeData getLightTheme(context) => ThemeData(
  scaffoldBackgroundColor: AppColors.whiteColor,
  colorScheme: ThemeData.light().colorScheme.copyWith(
    primary: AppColors.kPrimaryColor,
  ),
      textButtonTheme: _getTextButtonThemeData(context),
      inputDecorationTheme: _getInputDecorationThemeData(),

      textTheme: GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
    );

InputDecorationTheme _getInputDecorationThemeData() {
  return const InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.grey,fontSize: 12),
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        borderSide: BorderSide(
          color: Colors.black,
        ),
      ),

    );
}


_getTextButtonThemeData(context)
{
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      minimumSize: const Size(double.infinity, 42),
      textStyle: Styles.textStyleBold20(context),
      foregroundColor: Colors.black,
      backgroundColor: AppColors.kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
    ),
  );
}