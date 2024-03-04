import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trim_convict/features/shop/screens/cart/cart.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class TCartCountIcon extends StatelessWidget {
  const TCartCountIcon({
    super.key,
    required this.onPressed, 
    this.iconColor, 
    this.counterBgColor, 
    this.counterTextColor
  });

  final VoidCallback onPressed;
  final Color? iconColor, counterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor ?? (dark ? TColors.white : TColors.black) ,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('5', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.8)),
            ),
          ),
        )
      ],
    );
  }
}
