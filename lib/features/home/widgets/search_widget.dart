import 'package:coffee_shop_app/core/shard/app_text_field.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/image_constant.dart';
import '../../../core/shard/buttons.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SearchTextField()),

        const SizedBox(width: 16),

        AppIconButton(icon: AppIcons.filter, onTap: () {}),
      ],
    );
  }
}
