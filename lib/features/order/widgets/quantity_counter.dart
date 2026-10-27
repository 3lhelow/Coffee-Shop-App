import 'package:flutter/material.dart';

class QuantityCounter extends StatelessWidget {
  final int quantity;
  final ValueChanged<int> onChanged;

  const QuantityCounter({
    super.key,
    required this.quantity,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _circleButton(
          icon: Icons.remove,
          onTap: quantity > 1 ? () => onChanged(quantity - 1) : null,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            '$quantity',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),

        _circleButton(
          icon: Icons.add,
          onTap: () => onChanged(quantity + 1),
        ),
      ],
    );
  }

  Widget _circleButton({required IconData icon, required VoidCallback? onTap}) {
    final bool enabled = onTap != null;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: enabled ? Colors.black : Colors.grey),
        ),
        child: Icon(
          icon,
          size: 16,
          color: enabled ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}