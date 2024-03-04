import 'package:flutter/material.dart';
import 'package:trim_convict/common/widgets/chips/choice_chip.dart';
import 'package:trim_convict/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:trim_convict/common/widgets/products/product_cards/product_price_text.dart';
import 'package:trim_convict/common/widgets/text/product_title_text.dart';
import 'package:trim_convict/common/widgets/text/section_heading.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //---Selected attribute pricing and description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              //----Title price amd stock status
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionsButton: false),
                  const SizedBox(width: TSizes.spaceBtwSections),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Row(
                    children: [
                      const TProductTitleText(title: 'Price: ', smallSize: true),
                      //----Actual price
                      Text(
                        'Rs 3800',
                        style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(width: TSizes.spaceBtwItems),

                      //Sale Price
                       const TProductPriceText(price: '2399'),
                    ],
                  ),

                    // -----Stock------------
                    Row(
                      children: [
                        const TProductTitleText(title: 'Stock: ', smallSize: true),
                        Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )],
                )],
              ),
              //-----Variation Description
                  const TProductTitleText(
                    title: 'This is the Description of the Product and it can go upto max 4 lines.',
                    smallSize: true,
                    maxLines: 4,
                    ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        //---Attribute----
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionsButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Red', selected: true, onSelected: (value) {}),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Green', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionsButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Small', selected: true, onSelected: (value) {}),
                TChoiceChip(text: 'Medium', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Large', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'XL', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}

