import 'package:coffee_shop_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../core/models/products_model.dart';
import 'quantity_counter.dart';

class OrderItemCard extends StatefulWidget {
  final ProductsModel product;
  final ValueChanged<int>? onQuantityChanged;

  const OrderItemCard({
    super.key,
    required this.product,
    this.onQuantityChanged,
  });

  @override
  State<OrderItemCard> createState() => _OrderItemCardState();
}

class _OrderItemCardState extends State<OrderItemCard> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        // image
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            widget.product.image,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(width: 12),

        // product name
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.product.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.normalTitleText(size: 18)
              ),

              const SizedBox(height: 4),

              // product type
              Text(
                widget.product.type,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.subTitleText(),
              ),

            ],
          ),
        ),

        const SizedBox(width: 12),

        // counter
        QuantityCounter(
          quantity: _quantity,
          onChanged: (int value) {
            setState(() {
              _quantity = value;
            });

            widget.onQuantityChanged?.call(value);
          },
        ),
      ],
    );
  }
}
