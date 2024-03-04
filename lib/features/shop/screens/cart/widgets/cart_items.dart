import 'package:flutter/material.dart';
import 'package:trim_convict/common/widgets/products/product_cards/product_price_text.dart';
import 'package:trim_convict/common/widgets/products/products_cart/add_remove_button.dart';
import 'package:trim_convict/common/widgets/products/products_cart/cart_item.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class TCart extends StatelessWidget {
  const TCart({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwSections), 
          itemCount: 2,
          itemBuilder: (_, index) => Column(
            children: [
              const TCartItem(),
              if(showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems),

              //------Add Remove Row with total price
              if(showAddRemoveButton)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //-----Extra Space------
                      SizedBox(width: 70),
                      //  Add Remove button
                  TProductQuantityWithAddRemove(),
                    ],
                  ),
                  TProductPriceText(price: '2499'),
                 
            ],
          )
        ],
      ),
    );
  }
}