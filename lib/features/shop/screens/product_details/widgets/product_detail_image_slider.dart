import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:trim_convict/common/widgets/icons/t_circular_icon.dart';
import 'package:trim_convict/common/widgets/images/t_rounded_image.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class TProductImagesSlider extends StatelessWidget {
  const TProductImagesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark? TColors.darkerGrey : TColors.light,
        child:  Stack(
          children: [
            //-----Main Large Image-------
            const SizedBox(height: 400, child: Padding(
              padding: EdgeInsets.all(TSizes.productImgeRadius * 2),
              child: Center(child: Image(image: AssetImage(TImage.mom7))),
            )),

            //--------Image Slider---------
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.dafaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                    imageUrl: TImage.mom1,
                    ),
                ),
              ),
            ),

            //------Appbar Icons------
            const TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ],
            )

          ],
        ),
      ),
      );
  }
}