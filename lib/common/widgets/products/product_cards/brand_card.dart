import 'package:flutter/material.dart';
import 'package:trim_convict/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:trim_convict/common/widgets/images/t_circular_image.dart';
import 'package:trim_convict/common/widgets/text/t_brand_title_with_verified_icon.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/enums.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';


class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
    //--------- Container Design--------
    child: TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.sm),
      showBorder: showBorder,
      backgroundColor: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //-----Tcons--------
          Flexible(
            child: TCircularImage(
              isNetworkImage: false,
              image: TImage.clothIcon,
              backgroundColor: Colors.transparent,
              overlayColors: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwItems / 2),
                    
          //--------Text-----------
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const TBrandTitleWithVerifiedIcon(title: 'Trim Convict', brandTextSize: TextSizes.large),
                Text(
                  'Coming Soon!',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}