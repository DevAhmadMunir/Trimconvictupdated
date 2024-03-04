


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trim_convict/features/authentication/screens/login/login.dart';
import 'package:trim_convict/features/authentication/screens/onboarding/onboarding.dart';
import 'package:trim_convict/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:trim_convict/navigation_menu.dart';
import 'package:trim_convict/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:trim_convict/utils/exceptions/firebase_exceptions.dart';
import 'package:trim_convict/utils/exceptions/format_exceptions.dart';
import 'package:trim_convict/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //-----Variables----
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  //   function to show relevent Screen
  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
      //---Local Storage---
    deviceStorage.writeIfNull('IsFirstTime', true);
    //---Check if user launching first time app---- 
    deviceStorage.read('IsFirstTime') != true 
    ? Get.offAll(() => const LoginScreen()) 
    : Get.offAll(const OnBoardingScreens());
    }
  }

  //-----------Email and Password signIN-----------

  //  [Emai authentication]-> Sign In
  Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
      } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
      } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message; 
      } on FormatException catch (_) {
      throw const TFormatException();
      } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
      } catch (e) {
      throw 'Something went wrong. Please try Again';  
    }
  }

  //   [Email authentication]-> Register
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
      } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
      } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message; 
      } on FormatException catch (_) {
      throw const TFormatException();
      } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
      } catch (e) {
      throw 'Something went wrong. Please try Again';  
    }
  }

  //   [Email authentication]-> Mail verification
  Future<void> sendEmailVerification() async {
    try {
      return await _auth.currentUser?.sendEmailVerification();
      } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
      } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message; 
      } on FormatException catch (_) {
      throw const TFormatException();
      } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
      } catch (e) {
      throw 'Something went wrong. Please try Again';  
    }
  }


   //   [logoutUser]-> valid for any authentication
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
      } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
      } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message; 
      } on FormatException catch (_) {
      throw const TFormatException();
      } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
      } catch (e) {
      throw 'Something went wrong. Please try Again';  
    }
  }












}