import 'package:flutter/material.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/common/widgets/products/product_cards/brand_card.dart';
import 'package:trim_convict/common/widgets/products/sortable/sortable_products.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Trim Eastern', style: Theme.of(context).textTheme.headlineMedium), showBackArrow: true),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.dafaultSpace),
          child: Column(
            children: [
              //-----Brand Details----------
              TBrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwItems),

              TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}