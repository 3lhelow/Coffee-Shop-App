import 'package:coffee_shop_app/core/models/products_model.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/image_constant.dart';
import '../../../core/theme/app_theme.dart';
import '../../detail_item/views/detail_item.dart';

class ProductsItem extends StatelessWidget {
  final ProductsModel product;

  const ProductsItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToDetails(context),
      child: Container(
        padding: const EdgeInsets.all(8),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // product.image + product.rate
            Stack(
              alignment: AlignmentGeometry.topRight,
              children: [

                // image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(product.image, fit: BoxFit.cover),
                  ),
                ),
                
                // rate
                Positioned(
                  top: 0,
                  right: 0,

                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),

                    decoration: BoxDecoration(
                      color: const Color(0xFF313131).withValues(alpha: 0.5),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),

                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        const Icon(
                          Icons.star,
                          color: Color(0xFFFFC107),
                          size: 16,
                        ),

                        const SizedBox(width: 4),

                        Text(
                          '${product.rate}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
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
      ),
    );
  }

  void _navigateToDetails(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsItem(product: product),
      ),
    );
  }
}
