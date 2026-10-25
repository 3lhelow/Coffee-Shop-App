import 'package:coffee_shop_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ProductSizes extends StatefulWidget {
  const ProductSizes({super.key});

  @override
  State<ProductSizes> createState() => _ProductSizesState();
}

class _ProductSizesState extends State<ProductSizes> {
  String _selectedSize = "M";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildContainer("S"),
        _buildContainer("M"),
        _buildContainer("L"),
      ],
    );
  }

  Widget _buildContainer(String size) {
    final bool isSelected = size == _selectedSize;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSize = size;
        });
      },

      child: Container(
        width: 96,
        height: 41,

        decoration: BoxDecoration(
          color: isSelected
              ? AppColor.primaryColor.withValues(alpha: 0.1)
              : Colors.white,
          border: Border.all(
            color: isSelected ? AppColor.primaryColor : AppColor.dividerColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),

        alignment: Alignment.center,

        child: Text(
          size,
          style: TextStyle(
            color: isSelected ? AppColor.primaryColor : Colors.black,
            fontWeight: isSelected ? FontWeight.bold : null,
          ),
        ),
      ),
    );
  }
}
