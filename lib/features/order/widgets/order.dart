import 'package:coffee_shop_app/core/constants/image_constant.dart';
import 'package:coffee_shop_app/core/models/products_model.dart';
import 'package:coffee_shop_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../core/shard/buttons.dart';

class Order extends StatefulWidget {
  final ProductsModel product;
  final int quantity;

  const Order({
    super.key,
    required this.product,
    required this.quantity,
  });

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    final double totalPrice = (widget.product.price * widget.quantity) + 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [

                const Icon(
                  Icons.account_balance_wallet_outlined,
                  color: AppColor.primaryColor,
                  size: 20,
                ),

                const SizedBox(width: 8),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cash/Wallet',
                      style: AppTextStyle.normalTitleText(),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      '\$${totalPrice.toStringAsFixed(2)}',
                      style: AppTextStyle.normalTitleText(
                        color: AppColor.primaryColor,
                      ),
                    ),

                  ],
                ),
              ],
            ),

            IconButton(
              // todo: make arrow down when on pressed, and change the icon to `arrowUp`
              onPressed: () {},
              icon: Image.asset(
                AppIcons.arrowDown,
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),

        const SizedBox(height: 10),

        GeneralButton(
          name: 'Buy Now',
          // todo: last page (map)
          onPressed: () {},
        ),
      ],
    );
  }
}
