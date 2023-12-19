import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kartal/kartal.dart';

import '../../../../../assets.dart';
import '../../../../../common/widgets/images/circlar_image.dart';
import '../../../../../utils/constants/colors.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CirclarImage(
        image: Assets.icons.icUserPNG,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Coding with Samara',
        style: context.general.textTheme.titleMedium!
            .apply(color: AppColors.white),
      ),
      subtitle: Text(
        'support@codingwithsamara.com',
        style:
            context.general.textTheme.titleSmall!.apply(color: AppColors.white),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.edit,
            color: AppColors.white,
          )),
    );
  }
}
