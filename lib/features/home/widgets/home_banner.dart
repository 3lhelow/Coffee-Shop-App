import 'package:flutter/material.dart';

import '../../../core/constants/image_constant.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Image.asset(AppImages.banner),
    );
  }
}
