import 'package:flutter/material.dart';
import 'package:trim_convict/features/authentication/controllers/onboarding_controller.dart';
import 'package:trim_convict/utils/device/device_utility.dart';
import '../../../../../utils/constants/sizes.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(), 
      right: TSizes.dafaultSpace, 
      child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), 
      child: const Text('Skip'),
      ));
  }
}