import 'package:flutter/material.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/common/widgets/images/t_rounded_image.dart';
import 'package:trim_convict/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:trim_convict/common/widgets/text/section_heading.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Eastern Cloths'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.dafaultSpace),
          child: Column(
            children: [
              //----------Banner---------------
              const TRoundedImage(imageUrl: TImage.banner5, applyImageRadius: true, width: double.infinity),
              const SizedBox(height: TSizes.spaceBtwSections),

              //-----------Sub categories------
              Column(
                children: [
                  //--------Heading------------
                  TSectionHeading(title: 'Eastern', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) => const TProductCardHorizontal()
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}