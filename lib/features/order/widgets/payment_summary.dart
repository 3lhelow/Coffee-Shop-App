import 'package:coffee_shop_app/core/models/products_model.dart';
import 'package:coffee_shop_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PaymentSummary extends StatefulWidget {
  final ProductsModel product;

  const PaymentSummary({super.key, required this.product});

  @override
  State<PaymentSummary> createState() => _PaymentSummaryState();
}

class _PaymentSummaryState extends State<PaymentSummary> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Price", style: AppTextStyle.subTitleText(size: 14)),
            Text(
              "${widget.product.price}",
              style: AppTextStyle.normalTitleText(),
            ),
          ],
        ),

        Row(
          children: [
            Text("Delivery Fee", style: AppTextStyle.subTitleText(size: 14)),

            const Spacer(),

            const Text(
              "\$2.0",
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(width: 8),

            Text("\$1.0", style: AppTextStyle.smallTitleText()),
          ],
        ),
      ],
    );
  }
}
