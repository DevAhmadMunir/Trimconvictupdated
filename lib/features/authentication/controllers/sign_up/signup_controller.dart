

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/common/widgets/loaders/loaders.dart';
import 'package:trim_convict/data/repositories.authentication/authentication_repository.dart';
import 'package:trim_convict/data/user/user_repository.dart';
import 'package:trim_convict/features/authentication/screens/signup/widgets/network_manager.dart';
import 'package:trim_convict/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:trim_convict/features/personalization/models/user_model.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //----------Variables------
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  //----------SignUp--------
  void signup() async {
    try {
      // Start Loading
        TFullScreenLoader.openLoadingDialog('We are processing your information...', TImage.docerAnimation);
      // Check Internet connectivity
        final isConnected = await NetworkManager.instance.isConnected();
        if (!isConnected) {
          // remove loader
          TFullScreenLoader.stopLoading();
          return;
        }

      // Form Validation
        if (!signupFormKey.currentState!.validate()) {
          // remove loader
          TFullScreenLoader.stopLoading();
          return;
        }
  
      // Privacy Policy Check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackbar(
          title: 'Accept Privacy Policy',
          message: 'In order to create account, you must have read and accept the Privacy Policy and Terms of Use.', 
        );
        return;
      }
      // Register User In the Firebase Authentication & save user data in the firebase 
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());
      // Save Authenticated user data in the fire-base Fire-store
      final newUser = UserModel(
        id: userCredential.user!.uid, 
        firstName: firstName.text.trim(), 
        lastName: lastName.text.trim(), 
        userName: userName.text.trim(), 
        email: email.text.trim(), 
        phoneNumber: phoneNumber.text.trim(), 
        profilePicture: '');

        final userRepository = Get.put(UserRepositiry());
        await userRepository.saveUserRecord(newUser);
      // Show Success message
        TLoaders.successSnackbar(title: 'Congratulations', message: 'Your Account has been created! Verify email to continue.');
      // Move to verify Email screen
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));

    } catch (e) {

      //---Remove loader
      TFullScreenLoader.stopLoading();

      // Show some generic error to the user
      TLoaders.errorSnackbar(title: 'Oh Snap!', message: e.toString());  
    } 
  }
}