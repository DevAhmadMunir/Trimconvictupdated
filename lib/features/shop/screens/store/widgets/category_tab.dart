import 'package:flutter/material.dart';
import 'package:trim_convict/common/widgets/brands/brand_show_case.dart';
import 'package:trim_convict/common/widgets/layouts/grid_layout.dart';
import 'package:trim_convict/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:trim_convict/common/widgets/text/section_heading.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
      Padding(
         padding: const EdgeInsets.all(TSizes.dafaultSpace),
                child: Column(
                  children: [
                    //------Brands---------
                    const TBrandShowCase(images: [TImage.eastern4,TImage.eastern5,TImage.eastern6]),
                    const TBrandShowCase(images: [TImage.western1,TImage.denim10,TImage.mom6]),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    //-------Products-------
                    TSectionHeading(title: 'You might like', onPressed: () {}),
                    const SizedBox(height: TSizes.spaceBtwItems),
    
                    TGridLayout(itemCount: 8, itemBuilder: (_, index) => const TProductCardVertical()),
                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],
                ),
        ),
      ]
    );
  }
}