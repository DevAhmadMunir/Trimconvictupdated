import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/bindings/general_bindings.dart';
// import 'package:trim_convict/features/authentication/screens/onboarding/onboarding.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      // Show loader of circular progress indicator meanwhile authentication repository is deciding to show relevent screen
      home: const Scaffold(backgroundColor: TColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white))),
      // const OnBoardingScreens(),
    );
  }
}

