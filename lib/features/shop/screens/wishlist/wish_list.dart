import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/common/widgets/icons/t_circular_icon.dart';
import 'package:trim_convict/common/widgets/layouts/grid_layout.dart';
import 'package:trim_convict/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:trim_convict/features/shop/screens/home/home.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.dafaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 8, itemBuilder: (_, index) => const TProductCardVertical()),
            ],
          ),
          ),
      ),
    );
  }
}