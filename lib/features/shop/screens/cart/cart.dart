import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:trim_convict/features/shop/screens/checkout/checkout.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium)),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.dafaultSpace),
        child:  TCart(),
      ),
      //---------Checkout Button-------
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.dafaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout Rs2499')),
      ),
    );
  }
}


