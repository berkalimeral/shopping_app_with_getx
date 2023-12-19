import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../assets.dart';
import '../../../utils/constants/colors.dart';
import '../brand_title_with_verification.dart';
import '../images/circlar_image.dart';
import '../rounded_container.dart';

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
