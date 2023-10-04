import 'package:flutter/material.dart';
import '../../src.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final String label;
  final Color? backgroundColor;

  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.label,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          onPressed == null ? null : backgroundColor ?? AppColors.primaryColor,
        ),
        foregroundColor: const MaterialStatePropertyAll(AppColors.whiteColor),
        iconSize: const MaterialStatePropertyAll(Sizes.s32),
        iconColor: const MaterialStatePropertyAll(AppColors.whiteColor),
        elevation: MaterialStatePropertyAll(onPressed == null ? 0 : 10),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.s32),
          ),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(Sizes.s16),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: FontSizes.s20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
