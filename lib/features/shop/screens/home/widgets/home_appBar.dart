import 'package:flutter/material.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/common/widgets/products/products_cart/cart_manu_item.dart';
import 'package:trim_convict/utils/constants/colors.dart';
import 'package:trim_convict/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
    title: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.white)),
            Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
       ],
     ),
     actions: [
      TCartCountIcon(onPressed: () {}, iconColor: TColors.white,)
     ],
    );
  }
}
