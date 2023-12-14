import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';

import '../../../../assets.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/texts.dart';
import '../login/login.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image(
                image: AssetImage(
                    Assets.images.emailVerification.imgEmailVerification2PNG),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                Texts.verificationSuccessTitle,
                style: context.general.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                Texts.verificationSuccessSubtitle,
                style: context.general.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary),
                  onPressed: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: const Text(
                    Texts.continueBtn,
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
