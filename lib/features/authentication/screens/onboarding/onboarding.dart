import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/features/authentication/controllers/onboarding_controller.dart';
import 'package:trim_convict/features/authentication/screens/onboarding/widgets/onBoardingNextButton.dart';
import 'package:trim_convict/features/authentication/screens/onboarding/widgets/onBoarding_dot_navigation.dart';
import 'package:trim_convict/features/authentication/screens/onboarding/widgets/onBoarding_page.dart';
import 'package:trim_convict/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/text_strings.dart';

class OnBoardingScreens extends StatelessWidget {
  const OnBoardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(image: TImage.onBoardingImage1, title: TTexts.onBoardingTile1, subTitle: TTexts.onBoardingSubTile1,),
              onBoardingPage(image: TImage.onBoardingImage2, title: TTexts.onBoardingTile2, subTitle: TTexts.onBoardingSubTile2,),
              onBoardingPage(image: TImage.onBoardingImage3, title: TTexts.onBoardingTile3, subTitle: TTexts.onBoardingSubTile3,),
            ],
          ),
         
          //Skip Button
          const onBoardingSkip(),
         
          //Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          //Circular Button
          const onBoardingNextButton(),
        ],
      ),
    );
  }
}






