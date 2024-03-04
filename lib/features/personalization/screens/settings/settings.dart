import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:trim_convict/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:trim_convict/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:trim_convict/common/widgets/text/section_heading.dart';
import 'package:trim_convict/features/personalization/screens/address/address.dart';
import 'package:trim_convict/features/personalization/screens/profile/profile.dart';
import 'package:trim_convict/features/shop/screens/cart/cart.dart';
import 'package:trim_convict/features/shop/screens/order/order.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //----Header----
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //------App Bar----------
                  TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),
                  
                  //-----User Profile card------
                    TUserProfileTile(onPressed: () => Get.to(const ProfileScreen())),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              )
            ),
            //---------Body--------------
              Padding(
              padding: const EdgeInsets.all(TSizes.dafaultSpace),
              child: Column(
                children: [
                  //-------Acount Settings-----------
                  const TSectionHeading(title: 'Account Settings', showActionsButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                   TSettingsMenuTile(
                    icon: Iconsax.safe_home, 
                    title: 'My Addresses', 
                    subtitle: 'Set Shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                    ),
                   TSettingsMenuTile(
                    icon: Iconsax.shopping_cart, 
                    title: 'My Cart', 
                    subtitle: 'Add, remove products and move to checkout',
                    onTap: () => Get.to(() => const CartScreen()),
                    ),
                   TSettingsMenuTile(
                    icon: Iconsax.bag_tick, 
                    title: 'My Order', 
                    subtitle: 'In-progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                    ),
                  const TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance to registered Bank Account'),
                  const TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the Discounted Coupons'),
                  const TSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subtitle: 'Set any kind of notification message'),
                  const TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected Accounts'),

                  //------App Settings---------------
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(title: 'App Settings', showActionsButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload Data to your Cloud Firebase'),
                  TSettingsMenuTile(
                    icon: Iconsax.location, 
                    title: 'Geolocation', 
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    ),
                    TSettingsMenuTile(
                    icon: Iconsax.security_user, 
                    title: 'Safe Mode', 
                    subtitle: 'Search results is safe for All ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    ),
                    TSettingsMenuTile(
                    icon: Iconsax.image, 
                    title: 'HD Image Quality', 
                    subtitle: 'Set image quality to be Seen!',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    ),

                   //-----------Logout Button---------
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

