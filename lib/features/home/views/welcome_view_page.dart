import 'package:coffee_shop_app/core/constants/image_constant.dart';
import 'package:coffee_shop_app/core/theme/app_theme.dart';
import 'package:coffee_shop_app/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../../core/shard/buttons.dart';

class WelcomeViewPage extends StatelessWidget {
  const WelcomeViewPage({super.key});

  Widget _buildText({
    required String text,
    required double size,
    required Color color,
    bool? isBold,
  }) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: isBold != null && isBold
            ? FontWeight.bold
            : FontWeight.normal,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // image
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(AppImages.welcome, fit: BoxFit.cover),
                ),
              ),

              // black container
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
            ],
          ),

          // shadow between image and black container
          Column(
            children: [
              Expanded(flex: 6, child: Container()),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black, Colors.black],
                    ),
                  ),

                  child: Column(
                    children: [
                      _buildText(
                        text: "Fall in Love with \nCoffee in Blissful Delight!",
                        color: Colors.white,
                        size: 32,
                        isBold: true,
                      ),

                      const SizedBox(height: 24),

                      _buildText(
                        text: "Welcome to our cozy coffee, where every cup is a delightful for you",
                        color: AppColor.subTitleText,
                        size: 14,
                      ),

                      const SizedBox(height: 24),

                      Row(
                        children: [
                          Expanded(
                            child: GeneralButton(
                              name: "Get Started",
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeView(),
                                  ),
                                  (context) => false,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
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
