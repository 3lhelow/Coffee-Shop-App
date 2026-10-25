import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String leadingIcon;
  final String appBarTitle;
  final String? actionsIcon;

  const CustomAppBar({
    super.key,
    required this.leadingIcon,
    required this.appBarTitle,
    this.actionsIcon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Image.asset(leadingIcon, width: 16.5, height: 16.5),
      ),

      title: Text(
        appBarTitle,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,

      actions: [
        if (actionsIcon != null)
          IconButton(
            onPressed: () {},
            icon: Image.asset(actionsIcon!, width: 24, height: 24),
          ),
      ],
    );
  }
}
