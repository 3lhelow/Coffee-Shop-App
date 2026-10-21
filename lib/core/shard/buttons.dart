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