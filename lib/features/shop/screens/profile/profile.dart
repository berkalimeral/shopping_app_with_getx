import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kartal/kartal.dart';

import '../../../../common/widgets/appbar/custom_appbar.dart';
import '../../../../common/widgets/header_container.dart';
import '../../../../common/widgets/list_tile/settings_menu_tile.dart';
import '../../../../common/widgets/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import 'widgets/user_profile_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(
              height: null,
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      'Accounct',
                      style: context.general.textTheme.headlineMedium!
                          .apply(color: AppColors.white),
                    ),
                    showBackArrow: false,
                  ),
                  const UserProfileTile(),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionHeading(
                    title: 'Account Settings',
                    textColor: AppColors.black,
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery address',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress nad Completed Orders',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted coupons',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notification',
                    subtitle: 'Set any kind of notification message',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                    textColor: AppColors.black,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload data to your Cloud Firebase',
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
