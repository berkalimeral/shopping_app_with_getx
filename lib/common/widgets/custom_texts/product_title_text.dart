import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../utils/constants/colors.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSize;
  final int? maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? context.general.textTheme.labelLarge
          : context.general.textTheme.titleSmall!
              .apply(color: AppColors.darkGrey),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
