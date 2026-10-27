import 'package:coffee_shop_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Location", style: AppTextStyle.subTitleText()),
        const SizedBox(height: 8),
        Text(
          "Bilzen, Tanjungbalai",
          style: AppTextStyle.normalTitleText(color: Colors.white),
        ),
      ],
    );
  }
}
