import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kartal/kartal.dart';

import '../../../../common/widgets/appbar/custom_appbar.dart';
import '../../../../common/widgets/grid_layout.dart';
import '../../../../common/widgets/icon/circular_icon.dart';
import '../../../../common/widgets/product_card_vertical.dart';
import '../home/home.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Wishlist',
          style: context.general.textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
            icon: Iconsax.add,
            onPressed: () {
              Get.to(const HomeScreen());
            },
          )
        ],
        showBackArrow: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              GridLayout(
                itemCount: 6,
                itemBuilder: (p0, p1) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
