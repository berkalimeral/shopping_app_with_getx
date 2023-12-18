import 'package:flutter/material.dart';

import '../../../../common/widgets/login/login_form_divider.dart';
import '../../../../common/widgets/login/login_social_buttons.dart';
import '../../../../utils/constants/texts.dart';
import 'widgets/sign_up_form.dart';
import 'widgets/sign_up_title.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 56, right: 20, left: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SignUpTitle(),
              SizedBox(
                height: 16,
              ),
              SignUpForm(),
              SizedBox(
                height: 10,
              ),
              LoginFormDivider(
                text: Texts.orSignUp,
              ),
              SizedBox(
                height: 10,
              ),
              LoginSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
