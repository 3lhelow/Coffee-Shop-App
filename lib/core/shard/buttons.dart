import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class GeneralButton extends StatelessWidget {
  final String name;
  final Function()? onPressed;

  const GeneralButton({super.key, required this.name, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 56,
      color: AppColor.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Text(
        name,
        style: AppTextStyle.normalTitleText(color: Colors.white),
      ),
    );
  }
}

class AppIconButton extends StatelessWidget {
  final String icon;
  final Function() onTap;

  const AppIconButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 52,
        width: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColor.primaryColor,
        ),
        child: Image.asset(
          icon,
          color: Colors.white,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
