import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trim_convict/common/styles/shadows.dart';
import 'package:trim_convict/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:trim_convict/common/widgets/icons/t_circular_icon.dart';
import 'package:trim_convict/common/widgets/images/t_rounded_image.dart';
import 'package:trim_convict/common/widgets/products/product_cards/product_price_text.dart';
import 'package:trim_convict/common/widgets/text/product_title_text.dart';
import 'package:trim_convict/common/widgets/text/t_brand_title_with_verified_icon.dart';
import 'package:trim_convict/features/shop/screens/product_details/product_details.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImgeRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            // --------Thumbnail, Wishlist-Button, Discount-tag--------------
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //-------Thunmnail Image---------
                  const TRoundedImage(imageUrl: TImage.denim1, applyImageRadius: true),
    
                  //---------Sale-Tag--------------
                  Positioned(
                    top: 5,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                    ),
                  ),
    
                  //---------Favourite Icon button-----------
                  const Positioned(
                    top: 0, 
                    right: 0, 
                    child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red)),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            //---------product details-----------
    
              const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TProductTitleText(title: 'Denim embroided top', smallSize: true),
                     SizedBox(height: TSizes.spaceBtwItems / 2),
                     TBrandTitleWithVerifiedIcon(title: 'Trim Convict'),
                  ],
                ),
              ),
            ),
             const Spacer(),   
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //----price----
                      const Padding(
                        padding: EdgeInsets.only(left: TSizes.sm),
                        child: TProductPriceText(price: '2300'),
                      ),
                      //-----Add to cart---
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(TSizes.productImgeRadius),
                          )
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child:  Center(child: Icon(Iconsax.add, color: TColors.white))),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}




