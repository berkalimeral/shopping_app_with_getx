import 'package:flutter/material.dart';

import '../../../controllers/onboarding_controller.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      top: 35,
      right: 25,
      child: TextButton(
        onPressed: controller.skipPage,
        child: const Text('Skip'),
      ),
    );
  }
}
