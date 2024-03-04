import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/common/widgets/appbar/tabbar.dart';
import 'package:trim_convict/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:trim_convict/common/widgets/layouts/grid_layout.dart';
import 'package:trim_convict/common/widgets/products/product_cards/brand_card.dart';
import 'package:trim_convict/common/widgets/products/products_cart/cart_manu_item.dart';
import 'package:trim_convict/common/widgets/text/section_heading.dart';
import 'package:trim_convict/features/shop/screens/brands/all_brands.dart';
import 'package:trim_convict/features/shop/screens/store/widgets/category_tab.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/sizes.dart';
import 'package:trim_convict/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCountIcon(onPressed: () {}, iconColor: Colors.black)
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)? TColors.black : TColors.white,
              expandedHeight: 440,
    
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.dafaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    //----Search Bar--------
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(text: 'Search In Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                    const SizedBox(height: TSizes.spaceBtwSections),
    
                    //--------Fearture Brands----------
                    TSectionHeading(title: 'Featured Brands', onPressed: () => Get.to(() => const AllBrandsScreen())),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                    //---------Brand Grid-----------------
                    TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                      return const TBrandCard(showBorder: true);
                      }
                    )
                  ],
                ),
              ),
              bottom: const TTabBar(
                tabs: [
                Tab(child: Text('Western')),
                Tab(child: Text('Eastern')),
                Tab(child: Text('Girls')),
                Tab(child: Text('Mom & Daughter')),
                Tab(child: Text('Denim')),
                Tab(child: Text('Sleep Wear')),
                ]
              )
            )
          ];
        }, body: const TabBarView(
          children: [
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),]
          ),
        ),
      ),
    );
  }
}



