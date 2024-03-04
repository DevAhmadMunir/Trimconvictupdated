import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trim_convict/features/authentication/controllers/onboarding_controller.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/device/device_utility.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.dafaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
     child: ElevatedButton(
      onPressed: () => OnBoardingController.instance.nextPage(),
      style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark? TColors.primary : Colors.black),
      child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
