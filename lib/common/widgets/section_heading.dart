import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../utils/constants/colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor = AppColors.white,
    required this.showActionButton,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title;
  final String buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: showActionButton
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.general.textTheme.titleMedium!.apply(
              color: textColor,
            ),
          ),
          showActionButton
              ? TextButton(
                  onPressed: onPressed,
                  child: Text(buttonTitle),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
