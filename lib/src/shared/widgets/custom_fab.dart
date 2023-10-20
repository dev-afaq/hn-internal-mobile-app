import 'package:flutter/material.dart';

import '../../src.dart';

class CustomFab extends StatelessWidget {
  const CustomFab({super.key, this.onPressed, required this.label});
  final Function()? onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      width: Sizes.s200,
      height: Sizes.s200,
      child: RawMaterialButton(
        shape: const CircleBorder(),
        elevation: 0.0,
        onPressed: onPressed,
        child: Text(
          label,
        ),
      ),
    );
  }
}
