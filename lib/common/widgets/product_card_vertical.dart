import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kartal/kartal.dart';

import '../../assets.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/texts.dart';
import 'brand_title_with_verification.dart';
import 'custom_texts/product_title_text.dart';
import 'icon/circular_icon.dart';
import 'rounded_container.dart';
import 'rounded_image.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 250,
        width: 170,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.darkGrey.withOpacity(.1),
              blurRadius: 50,
              spreadRadius: 7,
              offset: const Offset(0, 2),
            ),
          ],
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 160,
              padding: const EdgeInsets.all(4),
              backgroundColor: AppColors.light,
              child: Stack(
                children: [
                  RoundedImage(
                    imgUrl: Assets.images.products.shoe2PNG,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircularIcon(
                        onPressed: () {},
                        icon: Iconsax.heart5,
                        iconColor: AppColors.error),
                  ),
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                      radius: 4,
                      backgroundColor: AppColors.secondry.withOpacity(.7),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      child: Text(
                        '25%',
                        style: context.general.textTheme.labelLarge!
                            .apply(color: AppColors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(
                    title: Texts.homeBodyProductsTitle,
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const BrandTitleWithVerification(
                    title: 'Nike',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$35.5',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.general.textTheme.headlineMedium,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        child: const SizedBox(
                          width: 30,
                          height: 30,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
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
