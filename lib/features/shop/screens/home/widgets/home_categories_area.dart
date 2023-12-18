import 'package:flutter/material.dart';

import '../../../../../assets.dart';
import '../../../../../common/widgets/vertical_image_text.dart';

class HomeCategoriesArea extends StatelessWidget {
  const HomeCategoriesArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return VeritcalImageText(
            title: 'Shoes',
            image: Assets.icons.icShoesPNG,
            onTap: () {},
          );
        },
      ),
    );
  }
}
