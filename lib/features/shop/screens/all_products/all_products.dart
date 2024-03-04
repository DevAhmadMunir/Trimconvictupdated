import 'package:flutter/material.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/common/widgets/products/sortable/sortable_products.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Popular Products', style: Theme.of(context).textTheme.headlineMedium), showBackArrow: true),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.dafaultSpace),
          child: TSortableProducts(),
        ),
      ),
    );
  }
}

