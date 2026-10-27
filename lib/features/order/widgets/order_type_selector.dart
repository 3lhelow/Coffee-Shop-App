import 'package:coffee_shop_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class OrderTypeSelector extends StatefulWidget {
  const OrderTypeSelector({super.key});

  @override
  State<OrderTypeSelector> createState() => _OrderTypeSelectorState();
}

class _OrderTypeSelectorState extends State<OrderTypeSelector> {
  bool _isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,

        decoration: BoxDecoration(
          color: const Color(0xffEDEDED),
          borderRadius: BorderRadius.circular(12),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            _textButton(
              text: "Deliver",
              isSelected: _isSelected,
              onTap: () {
                setState(() {
                  _isSelected = true;
                });
              },
            ),

            _textButton(
              text: "Pick Up",
              isSelected: !_isSelected,
              onTap: () {
                setState(() {
                  _isSelected = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _textButton({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: Container(
        height: 45,

        decoration: BoxDecoration(
          color: isSelected ? AppColor.primaryColor : const Color(0xffEDEDED),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),

        child: TextButton(
          onPressed: onTap,
          child: Text(
            text,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
