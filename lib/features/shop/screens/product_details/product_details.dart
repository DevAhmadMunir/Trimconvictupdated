import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:trim_convict/common/widgets/text/section_heading.dart';
import 'package:trim_convict/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:trim_convict/features/shop/screens/product_details/widgets/product_attribute.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:trim_convict/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:trim_convict/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:trim_convict/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:trim_convict/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
// import 'package:trim_convict/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //--------Product Image Slider--------
            const TProductImagesSlider(),

            //--------Product Details-------------
            Padding(
              padding: const EdgeInsets.only(right: TSizes.dafaultSpace, left: TSizes.dafaultSpace, bottom: TSizes.dafaultSpace),
              child: Column(
                children: [
                  //-------Ratings & Share--------
                  const TRatingAndShare(),

                  //----Price,Title,Stock and brand
                  const TProductMetaData(),

                  //------Attributes----------------
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //-------Check-Out button--------
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //-------Description-------
                  const TSectionHeading(title: 'Description', showActionsButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                   const ReadMoreText(
                    '2 Piece, Slide open, band Collar, Button Packet, Gathered Sleeves, Elastisized Waist Band, 2 Piece, Slide open, band Collar, Button Packet, Gathered Sleeves, Elastisized Waist Band ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800)
                   ),

                  //--------Reviews-----------
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews(199)', showActionsButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen())),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}


