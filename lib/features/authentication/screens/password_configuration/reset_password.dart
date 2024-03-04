import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/constants/text_strings.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.dafaultSpace),
          child: Column(
            children: [
            // image with 60% of screen width
            Image(image: const AssetImage(TImage.deliveredEmailIllustration), 
              width: THelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: TSizes.spaceBtwItems),

              //-----------Title & Sub Title-----------
              Text(TTexts.changeYourPasswordTitle, 
              style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.changeYourPasswordSubTitle, 
              style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              //---------Button-----------
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.done))),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail))),

            ],
          ),
        ),
      ),
    );
  }
}