import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/circle_container.dart';
import '../../../../../common/widgets/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../controllers/home_controller.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: .9,
            onPageChanged: (index, reason) =>
                controller.updatePageIndicator(index),
          ),
          items: banners
              .map(
                (imgUrl) => RoundedImage(
                  imgUrl: imgUrl,
                ),
              )
              .toList(),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                CircleContainer(
                  height: 4,
                  width: 20,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? AppColors.primary
                      : AppColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
