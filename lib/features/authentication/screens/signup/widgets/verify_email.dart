import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/data/repositories.authentication/authentication_repository.dart';
import 'package:trim_convict/features/authentication/controllers/sign_up/verify_email_controller.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/constants/text_strings.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});
  final String? email;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(()=> AuthenticationRepository.instance.logout()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //padding to give default space on all sides of screens
        child: Padding(
          padding: const EdgeInsets.all(TSizes.dafaultSpace),
          child: Column(
            children: [
              //-----------Images-----------
              Image(image: const AssetImage(TImage.deliveredEmailIllustration), width: THelperFunctions.screenHeight() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwItems),

              //-----------Title & Sub Title-----------
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(email ?? '', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              //-------------Buttons------------
              SizedBox(
                width: double.infinity, 
                child: ElevatedButton(
                onPressed: () => Get.to(() => controller.sendEmailVerification(),
              ), 
              child: const Text(TTexts.tContinue))),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: () => controller.sendEmailVerification(), 
              child: const Text(TTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}

class TImages {
}