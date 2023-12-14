import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../../utils/constants/texts.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FlutterLogo(
          size: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          Texts.loginTitle,
          style: context.general.textTheme.displayMedium!
              .copyWith(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          Texts.loginSubtitle,
          style: context.general.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
