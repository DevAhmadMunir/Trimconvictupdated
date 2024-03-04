import 'package:flutter/material.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

/// Light and Dark Elevated Button Themes

class TElevatedButtonTheme {
  TElevatedButtonTheme._(); /// To avoid Creating Instances


  /// --Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: TColors.light,
        backgroundColor: TColors.primary,
        disabledForegroundColor: TColors.darkGrey,
        disabledBackgroundColor: TColors.buttonDisabled,
        side: const BorderSide(color: TColors.primary),
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        textStyle: const TextStyle(fontSize: 16.0, color: TColors.textWhite, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    ),
  );


  /// --Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: TColors.light,
        backgroundColor: TColors.primary,
        disabledForegroundColor: TColors.darkGrey,
        disabledBackgroundColor: Colors.grey,
        side: const BorderSide(color: TColors.darkerGrey),
        padding: const EdgeInsets.symmetric(vertical: TSizes.buttonHeight),
        textStyle: const TextStyle(fontSize: 16.0, color: TColors.textWhite, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    ),
  );
}