import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/common/success_screen/success_screen.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:trim_convict/common/widgets/products/products_cart/coupon_widget.dart';
import 'package:trim_convict/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:trim_convict/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:trim_convict/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:trim_convict/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:trim_convict/navigation_menu.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineMedium)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.dafaultSpace),
          child: Column(
            children: [
              //----Items in cart
              const TCart(showAddRemoveButton: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              //------Coupon Text-Field----
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              //-- Billing Section----
              TRoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    ///pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    ///divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    ///payment method
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    ///address
                    TBillingAddressSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      //---------Checkout Button-------
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.dafaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImage.successfulPaymentIcon,
              title: 'Payment Success',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            )), 
          child: const Text('Checkout Rs2499'),
        ),
      ),
    );
  }
}

