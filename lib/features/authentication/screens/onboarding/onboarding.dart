import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../assets.dart';
import '../../../../utils/constants/texts.dart';
import '../../controllers/onboarding_controller.dart';
import 'widgets/onboarding_indicator.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                image: Assets.images.onboarding.imgOnboard1PNG,
                title: Texts.onBoardingTitle1,
                subtitle: Texts.onBoardingSubtitle1,
              ),
              OnboardingPage(
                image: Assets.images.onboarding.imgOnboard3PNG,
                title: Texts.onBoardingTitle2,
                subtitle: Texts.onBoardingSubtitle2,
              ),
              OnboardingPage(
                image: Assets.images.onboarding.imgOnboard2PNG,
                title: Texts.onBoardingTitle3,
                subtitle: Texts.onBoardingSubtitle3,
              ),
            ],
          ),
          const OnboardingSkip(),
          const OnboardingIndicator(),
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
