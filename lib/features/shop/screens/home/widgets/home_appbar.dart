import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../../common/widgets/custom_appbar.dart';
import '../../../../../common/widgets/product_cart_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      showBackArrow: false,
      title: Column(
        children: [
          Text(
            Texts.homeAppbarTitle,
            style: context.general.textTheme.labelMedium!
                .copyWith(color: AppColors.grey),
          ),
          Text(
            Texts.homeAppbarSubTitle,
            style: context.general.textTheme.headlineSmall!
                .copyWith(color: AppColors.white),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {},
        ),
      ],
    );
  }
}
