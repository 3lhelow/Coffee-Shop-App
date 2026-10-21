import 'package:flutter/widgets.dart';

class AppColor {
  static const Color primaryColor = Color(0xffC67C4E);
  static const Color titleBlackText = Color(0xff242424);
  static const Color subTitleText = Color(0xffA2A2A2);
  static const Color iconBlack = Color(0xff2A2A2A);
  static const Color dividerColor = Color(0xffF9F2ED);
}

class AppTextStyle {
  static TextStyle normalTitleText({Color? color, double? size}) {
    return TextStyle(
      fontSize: size ?? 16,
      color: color ?? AppColor.titleBlackText,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle smallTitleText({Color? color, double? size}) {
    return TextStyle(
      fontSize: size ?? 16,
      color: color ?? AppColor.titleBlackText,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle subTitleText({Color? color, double? size}) {
    return TextStyle(
      fontSize: size ?? 12,
      color: color ?? AppColor.subTitleText,
    );
  }
}