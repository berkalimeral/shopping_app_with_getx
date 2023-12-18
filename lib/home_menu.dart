// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/home/home.dart';
import 'utils/constants/colors.dart';

enum Screens {
  Home,
  Store,
  Wishlist,
  Profile,
}

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) =>
              controller.selectedIndex.value = value,
          backgroundColor: AppColors.white,
          destinations: [
            NavigationDestination(
                icon: const Icon(Iconsax.home), label: Screens.Home.name),
            NavigationDestination(
                icon: const Icon(Iconsax.shop), label: Screens.Store.name),
            NavigationDestination(
                icon: const Icon(Iconsax.heart), label: Screens.Wishlist.name),
            NavigationDestination(
                icon: const Icon(Iconsax.user), label: Screens.Profile.name),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.amber,
    )
  ];
}
