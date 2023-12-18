import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kartal/kartal.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts.dart';

class HomeSearchArea extends StatelessWidget {
  const HomeSearchArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          fillColor: AppColors.white,
          filled: true,
          prefixIcon: const Icon(
            Iconsax.search_normal,
            color: AppColors.darkGrey,
          ),
          labelText: Texts.homeSearchLbl,
          labelStyle: context.general.textTheme.bodyLarge!
              .apply(color: AppColors.darkGrey),
        ),
      ),
    );
  }
}
