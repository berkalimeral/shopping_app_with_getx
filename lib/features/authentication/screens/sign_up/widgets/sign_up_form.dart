import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kartal/kartal.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts.dart';
import '../email_verification.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    labelText: Texts.firstName,
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    labelText: Texts.lastName,
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              labelText: Texts.username,
              prefixIcon: const Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              labelText: Texts.email,
              prefixIcon: const Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              labelText: Texts.phoneNumber,
              prefixIcon: const Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                labelText: Texts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: const Icon(Icons.visibility_off_outlined)),
          ),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              const SizedBox(
                width: 6,
              ),
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: Texts.iAgreeTo,
                      style: context.general.textTheme.bodySmall),
                  TextSpan(
                    text: Texts.privacyPolicy,
                    style: context.general.textTheme.bodyMedium!.apply(
                        color: AppColors.primary,
                        decoration: TextDecoration.underline),
                  ),
                  TextSpan(
                      text: Texts.and,
                      style: context.general.textTheme.bodySmall),
                  TextSpan(
                    text: Texts.termsOfUse,
                    style: context.general.textTheme.bodyMedium!.apply(
                        color: AppColors.primary,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
              ),
              onPressed: () {
                Get.to(() => const EmailVerificationScreen());
              },
              child: const Text(Texts.createAccount,
                  style: TextStyle(color: AppColors.white)),
            ),
          )
        ],
      ),
    );
  }
}
