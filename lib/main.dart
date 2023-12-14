import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: const OnboardingScreen(),
    );
  }
}
