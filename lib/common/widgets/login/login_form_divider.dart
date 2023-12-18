import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';

import '../../../utils/constants/colors.dart';

class LoginFormDivider extends StatelessWidget {
  const LoginFormDivider({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
          child: Divider(
            color: AppColors.grey,
            thickness: 1,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(text.capitalize!,
            style: context.general.textTheme.labelMedium!
                .copyWith(color: AppColors.darkGrey)),
        const Flexible(
          child: Divider(
            color: AppColors.grey,
            thickness: 1,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
