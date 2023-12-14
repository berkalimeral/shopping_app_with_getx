import 'package:flutter/material.dart';

import '../../../../utils/constants/texts.dart';
import 'widgets/login_form.dart';
import '../../../../common/widgets/login_form_divider.dart';
import 'widgets/login_header.dart';
import '../../../../common/widgets/login_social_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 56, left: 20, right: 20, bottom: 20),
          child: Column(
            children: const [
              LoginHeader(),
              SizedBox(
                height: 30,
              ),
              LoginForm(),
              LoginFormDivider(
                text: Texts.orSignIn,
              ),
              SizedBox(
                height: 10,
              ),
              LoginSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
