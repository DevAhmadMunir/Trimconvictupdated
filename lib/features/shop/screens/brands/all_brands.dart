import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/common/widgets/layouts/grid_layout.dart';
import 'package:trim_convict/common/widgets/products/product_cards/brand_card.dart';
import 'package:trim_convict/common/widgets/text/section_heading.dart';
import 'package:trim_convict/features/shop/screens/brands/brand_products.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Brands', style: Theme.of(context).textTheme.headlineMedium), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.dafaultSpace),
          child: Column(
            children: [
              //-----Heading------
              const TSectionHeading(title: 'All Brands', showActionsButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              //------Brands------
              TGridLayout(itemCount: 10, 
              mainAxisExtent: 80, 
              itemBuilder: (context, index) => TBrandCard(
                showBorder: true, 
                onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}