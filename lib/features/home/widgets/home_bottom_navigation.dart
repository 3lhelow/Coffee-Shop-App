import 'package:coffee_shop_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/image_constant.dart';

class HomeBottomNavigation extends StatefulWidget {
  const HomeBottomNavigation({super.key});

  @override
  State<HomeBottomNavigation> createState() => _HomeBottomNavigationState();
}

class _HomeBottomNavigationState extends State<HomeBottomNavigation> {
  final icons = [
    AppIcons.home,
    AppIcons.heart,
    AppIcons.bag,
    AppIcons.notification,
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(icons.length, (int index) {
        final bool isSelected = _selectedIndex == index;

        return GestureDetector(
          onTap: () => _onItemTapped(index),
          child: Container(
            width: 80,
            // color: Colors.red.withValues(alpha: .5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Image.asset(
                  icons[index],
                  width: 24,
                  height: isSelected ? 30 : 24,
                  color: isSelected ? AppColor.primaryColor : AppColor.subTitleText,
                ),

                const SizedBox(height: 4),

                Container(
                  width: 20,
                  height: 4,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColor.primaryColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

              ],
            ),
          ),
        );
      }),
    );
  }
}
