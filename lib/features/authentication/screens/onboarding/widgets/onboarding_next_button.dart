import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../controllers/onboarding_controller.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      right: 15,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: AppColors.black,
        ),
        onPressed: OnBoardingController.instance.nextPage,
        child: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: AppColors.white,
        ),
      ),
    );
  }
}
