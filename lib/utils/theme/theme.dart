import 'package:flutter/material.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/theme/custom_themes/appbar_theme.dart';
import 'package:trim_convict/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:trim_convict/utils/theme/custom_themes/checkBox_theme.dart';
import 'package:trim_convict/utils/theme/custom_themes/chip_theme.dart';
import 'package:trim_convict/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:trim_convict/utils/theme/custom_themes/outlined_button.dart';
import 'package:trim_convict/utils/theme/custom_themes/text_field_theme.dart';
import 'package:trim_convict/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
/// Light mode
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppbarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButton.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,

  );

/// Dark mode
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppbarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButton.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,

  );
}