import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';

class CustomTabbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabbar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: AppColors.primary,
        labelColor: AppColors.black,
        unselectedLabelColor: AppColors.darkGrey,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
