import 'package:flutter/material.dart';
import 'package:trim_convict/common/widgets/appbar/appbar.dart';
import 'package:trim_convict/features/shop/screens/order/widgets/orders_list.dart';
import 'package:trim_convict/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //---App bar
      appBar: TAppBar(title: Text('My Orders', style: Theme.of(context).textTheme.headlineSmall,), showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.dafaultSpace),

        //----------Orders--------
         child: TOrderListItems(),
      ),
    );
  }
}