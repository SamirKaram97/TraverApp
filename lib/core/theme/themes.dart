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
      inputDecorationTheme: _getInputDecorationThemeData(context),

      textTheme: GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
    );

InputDecorationTheme _getInputDecorationThemeData(context) {
  return  InputDecorationTheme(
      labelStyle:  TextStyle(color: AppColors.greyColor,fontSize: 12),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      enabledBorder: _buildBorder(AppColors.greyColor),
      focusedBorder: _buildBorder(AppColors.kPrimaryColor),
      errorBorder: _buildBorder(Colors.red),
      focusedErrorBorder: _buildBorder(Colors.red),

    );
}

OutlineInputBorder _buildBorder(Color borderColor) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide:  BorderSide(color: borderColor),
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