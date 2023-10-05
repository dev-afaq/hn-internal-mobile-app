import 'package:flutter/material.dart';

import '../../../../../src.dart';

class CustomElevatedButtonIcon extends StatelessWidget {
  const CustomElevatedButtonIcon(
      {super.key,
      this.onPressed,
      required this.label,
      required this.icon,
      this.color});
  final Function()? onPressed;
  final String label;
  final Icon icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      label: Text(label),
      icon: icon,
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(
          Size.fromHeight(48),
        ),
        foregroundColor: const MaterialStatePropertyAll(AppColors.primaryColor),
        backgroundColor: MaterialStatePropertyAll(color),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(20),
        ),
      ),
    );
  }
}
