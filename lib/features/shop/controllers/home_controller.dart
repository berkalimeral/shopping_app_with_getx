import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  Rx<int> carouselCurrentIndex = 0.obs;

  void updatePageIndicator(int value) {
    carouselCurrentIndex.value = value;
  }
}
