import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:trim_convict/features/shop/screens/sub_category/sub_categories.dart';
import 'package:trim_convict/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImage.clothIcon, 
            title: 'Eastern Cloths', 
            onTap: () => Get.to(() => const SubCategoriesScreen()),
            );
          },
      ),
    );
  }
}
