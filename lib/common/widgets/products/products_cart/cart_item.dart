import 'package:flutter/material.dart';
import 'package:trim_convict/common/widgets/images/t_rounded_image.dart';
import 'package:trim_convict/common/widgets/text/product_title_text.dart';
import 'package:trim_convict/common/widgets/text/t_brand_title_with_verified_icon.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //-----Images-------
        TRoundedImage(
          imageUrl: TImage.eastern5,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        //---Title,Price and Size---------
         Expanded(
           child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Trim Convict'),
              const TProductTitleText(title: '2 piece suite', maxLines: 1),
              
              //-------Attributes------
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Brown ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Large ', style: Theme.of(context).textTheme.bodyLarge),
                  ]
                )
              )
            ],
          ),
         )
      ],
    );
  }
}