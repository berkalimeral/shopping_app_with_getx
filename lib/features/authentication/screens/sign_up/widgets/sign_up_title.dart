import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../../utils/constants/texts.dart';

class SignUpTitle extends StatelessWidget {
  const SignUpTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      Texts.signUpTitle,
      style: context.general.textTheme.headlineMedium,
    );
  }
}
