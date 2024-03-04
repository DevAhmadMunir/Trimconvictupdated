import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/common/styles/spacing_styles.dart';
import 'package:trim_convict/common/widgets.login_signUp/form_divider.dart';
import 'package:trim_convict/common/widgets.login_signUp/social_buttons.dart';
import 'package:trim_convict/features/authentication/screens/login/widgets/form_divider.dart';
import 'package:trim_convict/features/authentication/screens/login/widgets/loginHeader.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight, 
        child: Column(
          children: [
            //Logo tilte and sub title
            const login_header(),

              //----Form----
              const TLoginForm(),
                    
                    //----Divider-------
                    TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

                    const SizedBox(height: TSizes.spaceBtwSections),
                    //------Footer----
                    const TFormFooter(),
            ],
          ),
        ),
      ),
    );
  }
}



