import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CirclarImage extends StatelessWidget {
  const CirclarImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.overlayColor = AppColors.black,
    this.backgroundColor = AppColors.white,
    this.width = 56,
    this.height = 56,
    this.padding = 4,
  });

  final BoxFit? fit;
  final String image;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: AssetImage(image),
        color: overlayColor,
      ),
    );
  }
}
