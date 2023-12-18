import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/colors.dart';
import 'custom_texts/product_title_text.dart';

class BrandTitleWithVerification extends StatelessWidget {
  const BrandTitleWithVerification({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: ProductTitleText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            smallSize: true,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: 15,
        ),
      ],
    );
  }
}
