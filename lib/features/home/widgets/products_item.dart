import 'package:coffee_shop_app/core/models/products_model.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/image_constant.dart';
import '../../../core/theme/app_theme.dart';

class ProductsItem extends StatelessWidget {
  final ProductsModel product;

  const ProductsItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // product.image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(product.image, fit: BoxFit.cover),
            ),
          ),

          const SizedBox(height: 8),

          // product.name
          Text(
            product.name,
            style: AppTextStyle.normalTitleText(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 4),

          // product.type
          Text(
            product.type,
            style: AppTextStyle.subTitleText(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          const Spacer(), // Spacer to push the price to the bottom

          // product.price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("\$${product.price}", style: AppTextStyle.normalTitleText()),

              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),

                child: Container(
                  width: 32,
                  height: 32,

                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  // plus icon
                  child: Center(
                    child: Image.asset(AppIcons.plus),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
