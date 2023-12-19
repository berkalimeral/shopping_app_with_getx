import 'package:flutter/material.dart';

import '../../../assets.dart';
import '../../../features/shop/screens/store/store.dart';
import '../../../utils/constants/colors.dart';
import '../grid_layout.dart';
import '../product_card_vertical.dart';
import '../section_heading.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              BrandShowCase(
                images: [
                  Assets.icons.icClothesPNG,
                  Assets.icons.icClothesPNG,
                  Assets.icons.icClothesPNG,
                ],
              ),
              const SectionHeading(
                title: 'You might like',
                textColor: AppColors.black,
                showActionButton: true,
              ),
              GridLayout(
                itemCount: 4,
                itemBuilder: (p0, p1) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
