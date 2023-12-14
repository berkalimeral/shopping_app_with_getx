import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../home_menu.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts.dart';
import '../../password_configuration/password_configuration.dart';
import '../../sign_up/sign_up.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                prefixIcon: const Icon(Icons.email_outlined),
                labelText: Texts.password,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  prefixIcon: const Icon(Icons.lock_outline),
                  labelText: Texts.password,
                  suffixIcon: const Icon(Icons.visibility_off_outlined)),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(Texts.rememberMe)
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const PasswordConfigurationScreen());
                  },
                  child: const Text(Texts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary),
                onPressed: () {
                  Get.to(() => const NavigationMenu());
                },
                child: const Text(
                  Texts.signIn,
                  style: TextStyle(color: AppColors.white),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(),
                onPressed: () {
                  Get.to(() => const SignUpScreen());
                },
                child: const Text(Texts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
