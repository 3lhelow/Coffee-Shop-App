import 'package:coffee_shop_app/core/models/products_model.dart';
import 'package:flutter/material.dart';

import '../../../core/shard/buttons.dart';
import '../../../core/theme/app_theme.dart';
import '../../order/views/order_view.dart';

class BuyNowSection extends StatelessWidget {
  final ProductsModel product;

  const BuyNowSection({super.key, required this.product});

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
              "\$ ${product.price}",
              style: AppTextStyle.normalTitleText(
                color: AppColor.primaryColor,
                size: 18,
              ),
            ),
          ],
        ),

        SizedBox(
          width: 220,
          child: GeneralButton(
            name: "Buy Now",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderView(product: product,)),
              );
            },
          ),
        ),
      ],
    );
  }
}
