import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../utils/constants/colors.dart';

class VeritcalImageText extends StatelessWidget {
  const VeritcalImageText({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });

  final String title, image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: context.general.textTheme.labelMedium!
                .apply(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
