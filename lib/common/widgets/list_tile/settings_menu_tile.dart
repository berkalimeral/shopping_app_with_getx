import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../utils/constants/colors.dart';

class SettingsMenuTile extends StatelessWidget {
  const SettingsMenuTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.onTap,
      this.trailing});

  final String title, subtitle;
  final IconData icon;
  final Widget? trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 28,
        color: AppColors.primary,
      ),
      title: Text(
        title,
        style: context.general.textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: context.general.textTheme.labelMedium,
      ),
      trailing: trailing,
    );
  }
}
