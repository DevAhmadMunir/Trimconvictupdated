import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:trim_convict/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:trim_convict/common/widgets/layouts/grid_layout.dart';
import 'package:trim_convict/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:trim_convict/common/widgets/text/section_heading.dart';
import 'package:trim_convict/features/shop/screens/all_products/all_products.dart';
import 'package:trim_convict/features/shop/screens/home/widgets/home_appBar.dart';
import 'package:trim_convict/features/shop/screens/home/widgets/home_categories.dart';
import 'package:trim_convict/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';
import 'package:trim_convict/utils/constants/sizes.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //---------Header--------
            const TPrimaryHeaderContainer(
              child:  Column(
                children: [
                  // --------App-Bar------
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  //-------Search-Bar-----
                  TSearchContainer(text: 'Search your Dream Outfits'),
                  SizedBox(height: TSizes.spaceBtwSections),
                  //---------Heading-------
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.dafaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(title: 'Popular Categories', showActionsButton: false, textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBtwItems),
                        //-------Categories---------
                        THomeCategories(),
                     ],
                    ),
                  ),
                   SizedBox(height: TSizes.spaceBtwSections),
                ],
              )
            ),
            //----------Body------------
            Padding(
              padding: const EdgeInsets.all(TSizes.dafaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImage.banner2,
                      TImage.banner1,
                      TImage.banner5,
                      ]),
                      const SizedBox(height: TSizes.spaceBtwItems),

                  // ---------Heading---------------
                    TSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                    const SizedBox(height: TSizes.spaceBtwItems),    
                  //-------Popular Products----------
                  TGridLayout(itemCount: 12, itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}


















