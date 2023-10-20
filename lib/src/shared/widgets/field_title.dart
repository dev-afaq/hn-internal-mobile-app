import 'package:flutter/material.dart';

import '../../src.dart';

class FieldTitle extends StatelessWidget {
  const FieldTitle({
    super.key,
    required this.title,
    this.color,
  });
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: Sizes.s16),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          color: color ?? AppColors.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: FontSizes.s16,
        ),
      ),
    );
  }
}
