
class Assets {
  Assets._();

  static final images = _AssetsImages._();
  static final logo = _AssetsLogo._();

}

class _AssetsImages {
  _AssetsImages._();

  final emailVerification = _AssetsImagesEmailVerification._();
  final onboarding = _AssetsImagesOnboarding._();

}

class _AssetsImagesEmailVerification {
  _AssetsImagesEmailVerification._();


  final imgEmailVerificationPNG = 'assets/images/email_verification/img_email_verification.png';
  final imgEmailVerification2PNG = 'assets/images/email_verification/img_email_verification2.png';
}

class _AssetsImagesOnboarding {
  _AssetsImagesOnboarding._();


  final imgOnboard1PNG = 'assets/images/onboarding/img_onboard1.png';
  final imgOnboard2PNG = 'assets/images/onboarding/img_onboard2.png';
  final imgOnboard3PNG = 'assets/images/onboarding/img_onboard3.png';
}

class _AssetsLogo {
  _AssetsLogo._();


  final splashLogoLightJPEG = 'assets/logo/splash_logo_light.jpeg';
}
