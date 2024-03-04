import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trim_convict/app.dart';
import 'package:trim_convict/data/repositories.authentication/authentication_repository.dart';
import 'package:trim_convict/firebase_options.dart';

Future<void> main() async {
  //Add widgets binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //-- GetX local storage---
  await GetStorage.init();

  //-- Await splash until other itmes load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  
  // Todo:  Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform).then(
      (FirebaseApp value) => Get.put(AuthenticationRepository()),
    ); 
  runApp(const App());
}




