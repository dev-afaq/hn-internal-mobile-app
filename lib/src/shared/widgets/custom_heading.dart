import 'package:flutter/material.dart';

import '../../src.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading({
    super.key,
    required this.heading,
  });
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
        fontSize: FontSizes.s20,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }
}
