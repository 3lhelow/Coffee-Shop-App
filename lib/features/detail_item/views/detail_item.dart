import 'package:coffee_shop_app/core/constants/image_constant.dart';
import 'package:coffee_shop_app/core/models/products_model.dart';
import 'package:coffee_shop_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../core/shard/custom_app_bar.dart';
import '../widgets/buy_now_section.dart';
import '../widgets/expandable_text.dart';
import '../widgets/product_sizes.dart';

class DetailsItem extends StatelessWidget {
  final ProductsModel product;

  const DetailsItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App bar
                const CustomAppBar(
                  leadingIcon: AppIcons.arrowLeft,
                  appBarTitle: 'Detail',
                  actionsIcon: AppIcons.heart,
                ),

                const SizedBox(height: 16),

                // Product image
                AspectRatio(
                  aspectRatio: 1.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      product.image,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // product name
                const SizedBox(height: 16),
                Text(product.name, style: AppTextStyle.titleText()),

                // Product type + icons below product name
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      product.type,
                      style: AppTextStyle.subTitleText(size: 14),
                    ),

                    // Icons group on the right
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(AppIcons.bike, width: 24, height: 24),
                        const SizedBox(width: 24),
                        Image.asset(AppIcons.been, width: 24, height: 24),
                        const SizedBox(width: 24),
                        Image.asset(AppIcons.milk, width: 24, height: 24),
                      ],
                    ),
                  ],
                ),

                // rate
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star, color: Color(0xffFBBE21)),
                    Text(
                      "${product.rate}",
                      style: AppTextStyle.normalTitleText(),
                    ),
                    Text(
                      " (${product.totalOrders})",
                      style: AppTextStyle.subTitleText(),
                    ),
                  ],
                ),

                // divider
                const SizedBox(height: 8),
                const Divider(
                  color: AppColor.dividerColor,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),

                // description
                const SizedBox(height: 8),
                Text("Description", style: AppTextStyle.normalTitleText(size: 18)),
                const SizedBox(height: 8),
                // Text(product.description, style: AppTextStyle.subTitleText(), maxLines: 3, overflow: TextOverflow.ellipsis, )
                ExpandableText(
                  text: product.description,
                  style: AppTextStyle.subTitleText(),
                ),

                const SizedBox(height: 18),

                // size
                Text("Size", style: AppTextStyle.normalTitleText(size: 18)),
                const SizedBox(height: 12),
                const ProductSizes(),
              ],
            ),
          ),
        ),
      ),

      // price
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          color: Colors.white,
          child: BuyNowSection(price: product.price),
        ),
      ),
    );
  }
}
