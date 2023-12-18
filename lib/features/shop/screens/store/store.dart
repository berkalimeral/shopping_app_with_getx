import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../assets.dart';
import '../../../../common/widgets/appbar/custom_tabbar.dart';
import '../../../../common/widgets/brand_title_with_verification.dart';
import '../../../../common/widgets/appbar/custom_appbar.dart';
import '../../../../common/widgets/grid_layout.dart';
import '../../../../common/widgets/images/circlar_image.dart';
import '../../../../common/widgets/product_cart_icon.dart';
import '../../../../common/widgets/rounded_container.dart';
import '../../../../common/widgets/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../home/widgets/home_search_area.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          showBackArrow: false,
          title: Text(
            'Store',
            style: context.general.textTheme.headlineMedium,
          ),
          actions: [
            CartCounterIcon(
              onPressed: () {},
              iconColor: AppColors.black,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: AppColors.white,
                expandedHeight: 380,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      const HomeSearchArea(),
                      const SizedBox(
                        height: 4,
                      ),
                      const SectionHeading(
                        title: 'Featured Brands',
                        textColor: AppColors.black,
                        showActionButton: true,
                      ),
                      GridLayout(
                        mainAxisExtent: 80,
                        itemBuilder: (p0, p1) {
                          return const StoreBrandCard(
                            showBorder: true,
                          );
                        },
                        itemCount: 4,
                      ),
                    ],
                  ),
                ),
                bottom: const CustomTabbar(
                  tabs: [
                    Tab(child: Text('Sport')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    BrandShowCase(
                      images: [
                        Assets.icons.icClothesPNG,
                        Assets.icons.icClothesPNG,
                        Assets.icons.icClothesPNG,
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    BrandShowCase(
                      images: [
                        Assets.icons.icClothesPNG,
                        Assets.icons.icClothesPNG,
                        Assets.icons.icClothesPNG,
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    BrandShowCase(
                      images: [
                        Assets.icons.icClothesPNG,
                        Assets.icons.icClothesPNG,
                        Assets.icons.icClothesPNG,
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    BrandShowCase(
                      images: [
                        Assets.icons.icClothesPNG,
                        Assets.icons.icClothesPNG,
                        Assets.icons.icClothesPNG,
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          const StoreBrandCard(
            showBorder: false,
          ),
          Row(
            children: images
                .map((image) => _brandTopProductImageWidget(image))
                .toList(),
          ),
        ],
      ),
    );
  }

  Expanded _brandTopProductImageWidget(String image) {
    return Expanded(
      child: RoundedContainer(
        height: 80,
        backgroundColor: AppColors.grey,
        margin: const EdgeInsets.all(6),
        child: Image(image: AssetImage(image)),
      ),
    );
  }
}

class StoreBrandCard extends StatelessWidget {
  const StoreBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final void Function()? onTap;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(4),
        showBorder: showBorder,
        borderColor: AppColors.darkGrey,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: CirclarImage(
                image: Assets.icons.icClothesPNG,
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerification(title: 'Nike'),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: context.general.textTheme.labelMedium!
                        .apply(color: AppColors.darkGrey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
