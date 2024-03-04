
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trim_convict/common/widgets/loaders/loaders.dart';
import 'package:trim_convict/data/repositories.authentication/authentication_repository.dart';
import 'package:trim_convict/features/authentication/screens/signup/widgets/network_manager.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/popups/full_screen_loader.dart';

class LoginController extends GetxController {
  //----variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();


  // @override
  // void onInit() {
  //   email.text = localStorage.read('Remember_Me_Email');
  //   password.text = localStorage.read('Remember_Me_Password');
  //   super.onInit();
  // }

  //-----Email and password sign in
  Future<void> emailAndPasswordSignIn() async {
    try {
      //   start loading
      TFullScreenLoader.openLoadingDialog('Logging you In...', TImage.docerAnimation);

      //    Check Internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      //   form validation
      if (!loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      //    save data if remember me is selected
      if (rememberMe.value) {
        localStorage.write('Remember_Me_Email', email.text.trim());
        localStorage.write('Remember_Me_Password', password.text.trim());
      }
      //---------login user using email and password authentication

      final UserCredential = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      //-------remove loader
      TFullScreenLoader.stopLoading();

      //-----------Redirect------
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackbar(title: 'Oh Snap!' , message: e.toString());
    }
  }
}