import 'package:flutter/material.dart';

import '../../../core/shard/buttons.dart';
import '../../../core/theme/app_theme.dart';

class BuyNowSection extends StatelessWidget {
  final double price;

  const BuyNowSection({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Price", style: AppTextStyle.subTitleText(size: 14)),
            const SizedBox(height: 4),
            Text(
              "\$ $price",
              style: AppTextStyle.normalTitleText(
                color: AppColor.primaryColor,
                size: 18,
              ),
            ),
          ],
        ),


        SizedBox(
          width: 220,
          // todo: modify onPressed to navigate to Order page
          child: GeneralButton(name: "Buy Now", onPressed: () {}),
        ),
      ],
    );
  }
}
