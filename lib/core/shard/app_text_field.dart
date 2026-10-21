import 'package:flutter/material.dart';

import '../constants/image_constant.dart';
import '../theme/app_theme.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(

        decoration: InputDecoration(
          prefixIcon: Container(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              AppIcons.search,
              height: 24,
              width: 24,
              color: AppColor.subTitleText,
            ),
          ),

          hintText: "Search Coffee",
          helperStyle: AppTextStyle.subTitleText(size: 16),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          ),

          fillColor: Color(0xff2A2A2A),
          filled: true,
        ),
      ),
    );
  }
}
