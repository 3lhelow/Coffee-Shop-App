import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class HomeBackground extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(
          color: AppColor.titleBlackText,
        )),
        Expanded(flex: 2, child: Container()),
      ],
    );
  }
}