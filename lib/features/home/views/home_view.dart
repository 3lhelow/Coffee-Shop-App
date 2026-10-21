import 'package:coffee_shop_app/core/constants/image_constant.dart';
import 'package:flutter/material.dart';

import '../widgets/home_background.dart';
import '../widgets/home_banner.dart';
import '../widgets/location_widget.dart';
import '../widgets/search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeBackground(),

          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // location
                  SizedBox(height: 50),
                  LocationWidget(),

                  // search
                  SizedBox(height: 24),
                  SearchWidget(),

                  // banner
                  SizedBox(height: 24),
                  HomeBanner(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
