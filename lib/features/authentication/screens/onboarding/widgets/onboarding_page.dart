import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Image(
            width: context.sized.width * 0.8,
            height: context.sized.height * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: context.general.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            style: context.general.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
