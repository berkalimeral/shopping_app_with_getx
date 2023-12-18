import 'package:flutter/material.dart';

import '../../../../assets.dart';
import '../../../../common/widgets/grid_layout.dart';
import '../../../../common/widgets/header_container.dart';
import '../../../../common/widgets/product_card_vertical.dart';
import '../../../../common/widgets/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/texts.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories_area.dart';
import 'widgets/home_promo_slider.dart';
import 'widgets/home_search_area.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HomeAppbar(),
                  HomeSearchArea(),
                  SizedBox(
                    height: 20,
                  ),
                  SectionHeading(
                    title: Texts.homePopularCategories,
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  HomeCategoriesArea(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: PromoSlider(
                banners: [
                  Assets.images.promoBanner.promoBanner1JPEG,
                  Assets.images.promoBanner.promoBanner2JPEG,
                  Assets.images.promoBanner.promoBanner3JPEG,
                ],
              ),
            ),
            const SectionHeading(
              title: Texts.homeBodyProducts,
              showActionButton: true,
              textColor: AppColors.black,
            ),
            GridLayout(
              itemBuilder: (context, index) {
                return const ProductCardVertical();
              },
              itemCount: 6,
            ),
          ],
        ),
      ),
    );
  }
}
