import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/common/widgets/images/t_circular_image.dart';
import 'package:trim_convict/common/widgets/text/section_heading.dart';
import 'package:trim_convict/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        showBackArrow: true, title: Text('Profile'),
      ),
      
      //----Body---------
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.dafaultSpace),
          child: Column(
            children: [
              //---------Profile-Picture--------
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImage.user, width: 80, height: 80),
                    TextButton(onPressed: () {}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              //--------Details------------
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(title: 'Profile Information', showActionsButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

               TProfileMenu(title: 'Name', value: 'Trim Convict', onPressed: () {}),
               TProfileMenu(title: 'UserName', value: 'Trim Convict', onPressed: () {}),

               const SizedBox(height: TSizes.spaceBtwItems),
               const Divider(),
               const SizedBox(height: TSizes.spaceBtwItems),

               //---------Heading personal info--------
               TProfileMenu(title: 'User ID', value: '45689',icon: Iconsax.copy, onPressed: () {}),
               TProfileMenu(title: 'E-mail', value: 'RJ@gmail.com', onPressed: () {}),
               TProfileMenu(title: 'Phone Number', value: '+92-300-6449282', onPressed: () {}),
               TProfileMenu(title: 'Gender', value: 'Female', onPressed: () {}),
               TProfileMenu(title: 'Date-of-Birth', value: '10 Jan, 2002', onPressed: () {}),
               const Divider(),
               const SizedBox(height: TSizes.spaceBtwItems),

               Center(
                child: TextButton(
                  onPressed: () {}, 
                  child: const Text('Close Account', style: TextStyle(color: Colors.red))
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}

