import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final TextStyle style;

  const ExpandableText({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: widget.style,
          maxLines: isExpanded ? null : 2,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? "Show Less" : "Read More",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}