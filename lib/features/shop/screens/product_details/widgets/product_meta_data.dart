import 'package:flutter/material.dart';
import 'package:trim_convict/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:trim_convict/common/widgets/images/t_circular_image.dart';
import 'package:trim_convict/common/widgets/products/product_cards/product_price_text.dart';
import 'package:trim_convict/common/widgets/text/product_title_text.dart';
import 'package:trim_convict/common/widgets/text/t_brand_title_with_verified_icon.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/enums.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //----Price and Sale Price------
        Row(
          children: [
            //Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
            ),
              const SizedBox(width: TSizes.spaceBtwItems),
            //Price
            Text('Rs3800', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '2499', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
        //-------Title-------
        const TProductTitleText(title: 'Girls 2 piece Suit'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //-------Stock Status-------
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
        //--------Brand-------
        Row(
          children: [
            TCircularImage(
              image: TImage.clothIcon,
              width: 32,
              height: 32,
              overlayColors: dark ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(title: 'Trim Convict', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}