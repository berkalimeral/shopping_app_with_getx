import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';

import '../../../../assets.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/texts.dart';
import '../login/login.dart';
import '../../../../common/widgets/success_screen.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(const LoginScreen()),
            icon: const Icon(Icons.clear_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image(
                image: AssetImage(
                    Assets.images.emailVerification.imgEmailVerificationPNG),
              ),
              Text(Texts.verificationTitle,
                  style: context.general.textTheme.headlineMedium),
              const SizedBox(
                height: 10,
              ),
              Text('support@codingwithsamara.com',
                  style: context.general.textTheme.bodySmall),
              const SizedBox(
                height: 10,
              ),
              Text(
                Texts.verificationSubtitle,
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
                    Get.to(() => SuccessScreen(
                          image: Assets.images.emailVerification
                              .imgEmailVerification2PNG,
                          title: Texts.verificationSuccessTitle,
                          subtitle: Texts.verificationSuccessSubtitle,
                          onPressed: () {
                            Get.to(() => const LoginScreen());
                          },
                        ));
                  },
                  child: const Text(
                    Texts.continueBtn,
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    Texts.resendEmail,
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
